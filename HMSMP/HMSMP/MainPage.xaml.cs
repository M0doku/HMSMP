using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Drawing;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Essentials;
using MediaManager;
using MediaManager.Library;
using MediaManager.Media;
using MediaManager.Playback;
using MediaManager.Player;
using MediaManager.Queue;
using System.IO;
using System.Collections.ObjectModel;
using System.Threading;
using Plugin.Permissions;
using System.Xml;
using TagLib;
using System.Collections;
using System.Diagnostics;
using System.Text.RegularExpressions;
using System.Runtime.CompilerServices;

namespace HMSMP
{
    public partial class MainPage : Shell
    {
        public static int indexCurrentSong;
        public static int randomTrack;
        public static bool isRandom;
        //IEnumerable<string> songs;
        static IList<string> songs;
        double oldTime;
        double newTime;
        string Orientation;
        TimeSpan ts;
        public static string theme;
        bool mainPageisAppearing = false;
        public static string idf;
        public static string artist_android;
        public static string title_android;
        public bool isAutoPlay = false;
        public bool isFirstLaunch = true;
        public bool isChanged = false;
        public int nextSong;
        public static double phoneHeight = DeviceDisplay.MainDisplayInfo.Height / DeviceDisplay.MainDisplayInfo.Density;
        public static double phoneWidth = DeviceDisplay.MainDisplayInfo.Width / DeviceDisplay.MainDisplayInfo.Density;

		public MainPage()
        {
            InitializeComponent();
			checkPermissions();
			CrossMediaManager.Current.MediaItemChanged += songsChanged;
            CrossMediaManager.Current.StateChanged += currentPlayerState_Changed;
            CrossMediaManager.Current.PositionChanged += currentPosition_Changed;
            CrossMediaManager.Current.MediaItemFinished += songIsFinished;
            slider_Position.ValueChanged += slider_ValueChanged;
            currentPosition(CrossMediaManager.Current.Position);
            currentPlayerState(CrossMediaManager.Current.State);
            CrossMediaManager.Current.RepeatMode = RepeatMode.All;
            PlayerSettings PS = new PlayerSettings();     
            songList SL = new songList();
            DeviceDisplay.MainDisplayInfoChanged += updateLayout;            
            themesPicker();
            startLayout();         
		}
		private void checkPermissions()
        {
            Task checkStatus = new Task(async () =>
            {
                var status = await CrossPermissions.Current.CheckPermissionStatusAsync(Plugin.Permissions.Abstractions.Permission.Storage);
                if (await CrossPermissions.Current.ShouldShowRequestPermissionRationaleAsync(Plugin.Permissions.Abstractions.Permission.Storage))
                {
                    await DisplayAlert("Need storage", "Request storage permission", "OK");                   
                }
                var results = await CrossPermissions.Current.RequestPermissionsAsync(Plugin.Permissions.Abstractions.Permission.Storage);
                if (results.ContainsKey(Plugin.Permissions.Abstractions.Permission.Storage))
                    status = results[Plugin.Permissions.Abstractions.Permission.Storage];
            });
            checkStatus.Start();           
        }    
        private void themesPicker()
        {
            if (PlayerSettings.currentTheme == "White")
            {           
                lad.BackgroundColor = Xamarin.Forms.Color.White;
                slider_Position.ThumbColor = Xamarin.Forms.Color.Red;
                slider_Position.MaximumTrackColor = Xamarin.Forms.Color.Red;
                slider_Position.MinimumTrackColor = Xamarin.Forms.Color.Red;
				playerNext.BackgroundColor = Xamarin.Forms.Color.White;
				playerPause.BackgroundColor = Xamarin.Forms.Color.White;
                playerPlay.BackgroundColor = Xamarin.Forms.Color.White;
                playerPrev.BackgroundColor = Xamarin.Forms.Color.White;
                shellMainPage.FlyoutBackgroundColor = Xamarin.Forms.Color.White;
                randomButton.BackgroundColor = Xamarin.Forms.Color.White;
            }
            else if(PlayerSettings.currentTheme == "Black")
            {
				slider_Position.ThumbColor = Xamarin.Forms.Color.Red;
				slider_Position.MaximumTrackColor = Xamarin.Forms.Color.Red;
				slider_Position.MinimumTrackColor = Xamarin.Forms.Color.Red;
				lad.BackgroundColor = Xamarin.Forms.Color.Black;
				playerNext.BackgroundColor = Xamarin.Forms.Color.Black;
				playerPause.BackgroundColor = Xamarin.Forms.Color.Black;
				playerPlay.BackgroundColor = Xamarin.Forms.Color.Black;
				playerPrev.BackgroundColor = Xamarin.Forms.Color.Black;
				shellMainPage.FlyoutBackgroundColor = Xamarin.Forms.Color.Black;
				randomButton.BackgroundColor = Xamarin.Forms.Color.Black;
			}
        }
        void startLayout()
		{
			Orientation = DeviceDisplay.MainDisplayInfo.Orientation.ToString();
			if (Orientation == "Portrait")
            {
                portraitLayout();
          	}
            else if(Orientation == "Landscape")
            {
                landscapeLayout();
            }
        }
        void updateLayout(object sender, DisplayInfoChangedEventArgs e)
        {
            Orientation = DeviceDisplay.MainDisplayInfo.Orientation.ToString();
            if (Orientation == "Portrait")
            {
                portraitLayout();
            }
            else if(Orientation == "Landscape")
            {
                landscapeLayout();
            }
        }

        void portraitLayout()
        {
            ///
            buttonRow.Height = phoneHeight * 0.1;
            artistRow.Height = phoneHeight * 0.1;
            songRow.Height = phoneHeight * 0.1;
            durationRow.Height = phoneHeight * 0.1;
            sliderRow.Height = phoneHeight * 0.05;
            shuffleRow.Height = phoneHeight * 0.035;
            aboveButtonsRow.Height = phoneHeight * 0.15;
            buttonsRow.Height = phoneHeight * 0.075;         
            playerNext.HeightRequest = phoneHeight * 0.1;
            playerPause.HeightRequest = phoneHeight * 0.1;
            playerPlay.HeightRequest = phoneHeight * 0.1;
            playerPrev.HeightRequest = phoneHeight * 0.1;
			playerNext.Margin = new Thickness(0, 0, 0, 0);
			playerPrev.Margin = new Thickness(0, 0, 0, 0);
			playerPlay.Margin = new Thickness(0, 0, 0, 0);
			playerPause.Margin = new Thickness(0, 0, 0, 0);
		} 
        void landscapeLayout()
        {
            buttonRow.Height = phoneWidth * 0.01;
            artistRow.Height = phoneWidth * 0.15;
            songRow.Height = phoneWidth * 0.15;
            durationRow.Height = phoneWidth * 0.1;
            sliderRow.Height = phoneWidth * 0.05;
            shuffleRow.Height = phoneWidth * 0.075;
            aboveButtonsRow.Height = phoneWidth * 0.1;
            buttonsRow.Height = phoneWidth * 0.2;
			playerNext.HeightRequest = phoneWidth * 0.2;
			playerPause.HeightRequest = phoneWidth * 0.2;
			playerPlay.HeightRequest = phoneWidth * 0.2;
			playerPrev.HeightRequest = phoneWidth * 0.2;
            playerNext.Margin = new Thickness(0, 0, 0, 10);
            playerPrev.Margin = new Thickness(0, 0, 0, 10);
            playerPlay.Margin = new Thickness(0, 0, 0, 10);
            playerPause.Margin = new Thickness(0, 0, 0, 10);
		}
        private void currentPosition(TimeSpan currentPosition)
        {
            var formatting = @"hh\:mm\:ss";
            if (CrossMediaManager.Current.Duration.Hours <= 0)
                formatting = @"mm\:ss";

            var fullLengthString = CrossMediaManager.Current.Duration.ToString(formatting);
            playerDuration.Text = $"{currentPosition.ToString(formatting)}/{fullLengthString}";
            slider_Position.Value = currentPosition.TotalSeconds;

        }
        private async void slider_ValueChanged(object sender, ValueChangedEventArgs e)
        {
            
            oldTime = e.OldValue;
            newTime = e.NewValue;

            if (((oldTime + 2 < newTime) || (newTime + 2 < oldTime)) && CrossMediaManager.Current.Position.TotalSeconds > 1)
            {				
				slider_Position.Value = newTime;
                ts = TimeSpan.FromSeconds(newTime);
                await CrossMediaManager.Current.SeekTo(ts);
                ts = TimeSpan.Zero;
            }
            
            double totalSeconds = CrossMediaManager.Current.Duration.TotalSeconds;
            if (newTime > (totalSeconds - 1)) 
            {
			}
		}
        private void currentPosition_Changed(object sender, MediaManager.Playback.PositionChangedEventArgs e)
        {
            if(songs.Count > 0)
            {
				Device.BeginInvokeOnMainThread(() =>
				{
					currentPosition(e.Position);
				});		
			}
           
        }
        private void currentPlayerState(MediaPlayerState playerState)
        {
            if (playerState == MediaManager.Player.MediaPlayerState.Loading)
            {
				slider_Position.Value = 0;
			}
            else if (playerState == MediaManager.Player.MediaPlayerState.Playing && CrossMediaManager.Current.Duration.TotalSeconds > 0)
            {
                slider_Position.Maximum = CrossMediaManager.Current.Duration.TotalSeconds;
                playerPlay.IsVisible = false;
                playerPause.IsVisible = true;
			}
			else if (playerState == MediaPlayerState.Paused)
            {
                playerPause.IsVisible = false;
                playerPlay.IsVisible = true;
            }
		}
        private void songIsFinished(object sender, MediaItemEventArgs e)
        {
        }
        private void currentPlayerState_Changed(object sender, StateChangedEventArgs e)
        {

            Device.BeginInvokeOnMainThread(() =>
            {
                currentPlayerState(e.State);
            });
        }
        private async Task findMusic()
        {
            PlayerSettings PS = new PlayerSettings();
            CrossMediaManager.Current.AutoPlay = false;
            if(PlayerSettings.folder != null)
            {     
				string directory = PlayerSettings.folder;
                //songs = Directory.EnumerateFiles(directory, "*.*").Where(s => s.EndsWith(".mp3", StringComparison.OrdinalIgnoreCase));
                //songs = songs.Reverse();
                ///songs = Directory.GetFiles(directory, "*.mp3");
                //songs = songs.Reverse().ToList();
                DirectoryInfo info = new DirectoryInfo(directory);
                FileInfo[] fileInfo = info.GetFiles("*.mp3").OrderBy(p => p.CreationTime).Reverse().ToArray();
                songs = fileInfo.Select(f => f.FullName).ToList();
                await CrossMediaManager.Current.Play(songs);
				for (int i = 0; i < songs.Count; i++)
                {
                   await CrossMediaManager.Current.PlayQueueItem(i);
                }
                await CrossMediaManager.Current.SeekToStart();  
			}
		}
        public async void Find_music_Clicked(object sender1, EventArgs e)
        {           
          await findMusic();
        }
		private void songsChanged(object sender, MediaItemEventArgs e)
        {
            if(songs.Count > 0)
            {
				slider_Position.Value = 0;
				currentPosition(CrossMediaManager.Current.Position);
				currentPlayerState(CrossMediaManager.Current.State);
				NextSong();
				indexCurrentSong = CrossMediaManager.Current.Queue.CurrentIndex;
                //CrossMediaManager.Current.Notification.Enabled = false;
            }
		}
		public static void NextSong()
		{
			string title = CrossMediaManager.Current.Queue.Current.Title;
			string artist = CrossMediaManager.Current.Queue.Current.Artist;
			string fileName = CrossMediaManager.Current.Queue.Current.FileName;
			var mainpage = Application.Current.MainPage;
			bool contain = CrossMediaManager.Current.Queue.Current.FileName.Contains('-');
			if (!string.IsNullOrEmpty(artist)) //Init artist with metadata
			{
				(mainpage as MainPage).Label_songName.Text = artist;
				title_android = artist;
			}
			else if (contain) //Init artist without metadata | Artist - SongName.mp3
			{
				string current_title = fileName;
				int index = current_title.IndexOf('-');
				if (current_title[index + 1] == ' ')
				{
					(mainpage as MainPage).Label_songName.Text = current_title.Substring(0, index - 1);
					title_android = current_title.Substring(0, index - 1);
				}
				else
				{
					int length = current_title.Length - index;
					string temp = current_title.Substring(index + 1, length - 1);
					int temp_index = temp.IndexOf('-');
					length = index + temp_index;
					(mainpage as MainPage).Label_songName.Text = current_title.Substring(0, length);
					title_android = current_title.Substring(0, length);
				}
			}
			else
			{
				(mainpage as MainPage).Label_songName.Text = "";
			}
			if (!string.IsNullOrEmpty(artist)) //Init songname with metadata 
			{
				(mainpage as MainPage).Label_artist.Text = title;
				artist_android = title;
			}
			else if (contain) //Init songname without metadata | Artist - SongName.mp3
			{
				string current_title = fileName;
				int index = current_title.IndexOf('-');
				if (current_title[index + 1] == ' ')
				{
					int length = (current_title.Length - index);
					(mainpage as MainPage).Label_artist.Text = current_title.Substring(index + 2, length - 6);
					artist_android = current_title.Substring(index + 2, length - 6);
				}
				else
				{
					int length = current_title.Length - index;
					string temp = current_title.Substring(index + 1, length - 1);
					int temp_index = temp.IndexOf('-');
					length = index + temp_index + 3;
					int lengthTitle = current_title.Length - length;
					(mainpage as MainPage).Label_artist.Text = current_title.Substring(length, lengthTitle - 4);
				}
			}
			else
			{
				(mainpage as MainPage).Label_artist.Text = "";
			}
		}
		private void playerPlay_Clicked(object sender, EventArgs e)
        {			
			CrossMediaManager.Current.Play();           
        }
        private void playerPause_Clicked(object sender, EventArgs e)
        {
                CrossMediaManager.Current.Pause();
        }   
        private void playerNext_Clicked(object sender, EventArgs e)
        {
                if (songs?.Count > 0)
                {
                    CrossMediaManager.Current.PlayNext();
                    CrossMediaManager.Current.Play();
                }
        }
        private void playerPrev_Clicked(object sender, EventArgs e)
        {
                if (songs?.Count() > 0)
                {
                 if (CrossMediaManager.Current.Queue.HasPrevious == false)
                    {
                        int currentTrack = CrossMediaManager.Current.Queue.CurrentIndex;                     
                        CrossMediaManager.Current.PlayQueueItem(currentTrack);
                    }
                    CrossMediaManager.Current.PlayPrevious();
                    CrossMediaManager.Current.Play();  
                }              
        }
		private async void ContentPage_Appearing(object sender, EventArgs e)
		{
            PlayerSettings ps = new PlayerSettings();
			if (PlayerSettings.loadMusic == true && mainPageisAppearing == false)
			{
				 await findMusic();
			}
			mainPageisAppearing = true;
        }
		private async void SwipeGestureRecognizer_Swiped(object sender, SwipedEventArgs e)
		{
            await CrossMediaManager.Current.Stop();
			await findMusic();		
		}
		private async void SwipeGestureRecognizer_Swiped_1(object sender, SwipedEventArgs e)
		{
           await Navigation.PushAsync(new songList());
		}
		private void random_Clicked(object sender, EventArgs e)
		{
            if (isRandom == false && PlayerSettings.currentTheme == "White")
            {
                isRandom = true;
                createRandomPlaylist();
				randomButton.BorderColor = Xamarin.Forms.Color.Black;
            }
            else if (isRandom == false && PlayerSettings.currentTheme == "Black")
            {
                isRandom = true;
				createRandomPlaylist();
				randomButton.BorderColor = Xamarin.Forms.Color.White;
            }
            else if (isRandom == true && PlayerSettings.currentTheme == "White")
            {
                isRandom = false;
                randomButton.BorderColor = Xamarin.Forms.Color.White;
            }
            else if(isRandom == true && PlayerSettings.currentTheme == "Black")
            {
                isRandom = false;
                randomButton.BorderColor = Xamarin.Forms.Color.Black;
            }
		}
        public IList<IMediaItem> Randomize(IList<IMediaItem> array)
        {
            Random random = new Random();
            for(int i = 0; i < array.Count; i++)
            {
				int r = random.Next(i, array.Count);
				(array[r], array[i]) = (array[i], array[r]);
			}
            return array;
        }
        public void createRandomPlaylist()
        {
				int currentSongIndex = 0;
				IList<IMediaItem> items = CrossMediaManager.Current.Queue.MediaItems.Cast<IMediaItem>().ToList();
				bool isSongFinded = false;
				int mediaCount = CrossMediaManager.Current.Queue.Count();
				int playingSongIndex = indexCurrentSong;
				IMediaItem currentSong = CrossMediaManager.Current.Queue.Current;
				for (int i = 0; i < mediaCount; i++)
				{
					if (i == playingSongIndex)
					{
						isSongFinded = true;
						continue;
					}
					else if (isSongFinded == false)
					{
						CrossMediaManager.Current.Queue.RemoveAt(0);
						currentSongIndex++;
					}
					else if (isSongFinded == true)
					{
						CrossMediaManager.Current.Queue.RemoveAt(1);
						currentSongIndex++;

					}
				}
				IList<IMediaItem> randomSongs = Randomize(items);
				randomSongs.Remove(currentSong);
				int randomSongsCount = randomSongs.Count;

				for (int i = 0; i < randomSongsCount; i++)
				{

					CrossMediaManager.Current.Queue.Add(randomSongs[i]);

				}
                indexCurrentSong = 0;          
        }
	}
}
