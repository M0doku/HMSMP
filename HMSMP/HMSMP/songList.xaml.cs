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
using Xamarin.Forms.Xaml;
using static HMSMP.songList;
using System.Runtime.ConstrainedExecution;

namespace HMSMP
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class songList : ContentPage
    {
        ObservableCollection<Song> list;
        static IEnumerable<Song> filteredList;
        static IEnumerable<Song> playList;
        IEnumerable<string> songs;
        string Orientation;
		private static songList instance;
        public bool isAppearing = false;
		/*public static songList Instance
		{
			get
			{
				Prepare();
				return instance;
			}
		}
		public static void Prepare()
		{
			if (instance == null)
			{
				instance = new songList();
                Console.WriteLine("CREATED SONGLIST");
			}
		}
        */
		public songList()
        {
            
            InitializeComponent();
			themesPicker();
            
			CrossMediaManager.Current.MediaItemChanged += mediaItem_Changed;
            CrossMediaManager.Current.MediaItemFinished += mediaItem_Finished;
		}

		private void mediaItem_Finished(object sender, MediaItemEventArgs e)
		{
			songScroll();
		}

		private void songScroll()
        {
			Orientation = DeviceDisplay.MainDisplayInfo.Orientation.ToString();
			if (CrossMediaManager.Current.Queue.MediaItems.Count > 0)
			{
				if (Orientation == "Portrait")
				{
					int song = MainPage.indexCurrentSong;
					songList_CV.ScrollTo(song + 8, animate: false);
				}
				else if (Orientation == "Landscape")
				{
					int song = MainPage.indexCurrentSong;
					songList_CV.ScrollTo(song + 2, animate: false);
				}
			}
		}
        private void mediaItem_Changed(object sender, MediaItemEventArgs e)
        {          
            songScroll();
        }
        public void themesPicker()
        {
            if (PlayerSettings.currentTheme == "White")
            {
               SL.BackgroundColor = Xamarin.Forms.Color.White;
				
			}
            else if (PlayerSettings.currentTheme == "Black")
            {
                SL.BackgroundColor = Xamarin.Forms.Color.Black;
            }
        }
       
        public void songPlayList()
        {
            List<IMediaItem> songsList = CrossMediaManager.Current.Queue.MediaItems.ToList();
            list = new ObservableCollection<Song>();
            for (int i = 0; i < songsList.Count; i++)
            {
                string title; string artist; string duration; string color;
                IMediaItem item = songsList[i];
                bool contain = item.FileName.Contains('-');
                if (!string.IsNullOrEmpty(item.Artist))
                {
                    title = item.Artist;
                }
                else if (contain)
                {
                    string current_title = item.FileName;
                    int index = current_title.IndexOf('-');                 
					if (current_title[index + 1] == ' ')
					{
						title = current_title.Substring(0, index - 1);
					}
					else
					{
						int length = current_title.Length - index;
						string temp = current_title.Substring(index + 1, length - 1);
						int temp_index = temp.IndexOf('-');
						length = index + temp_index;
						title = current_title.Substring(0, length);

					}
				}
                else
                {
                    title = "unknown";
                }

                if (!string.IsNullOrEmpty(item.Artist))
                {
                    artist = item.Title;
                }
                else if (contain)
                {
                    string current_artist = item.FileName;
                    int index = current_artist.IndexOf('-');
					if (current_artist[index + 1] == ' ')
					{
						int length = (current_artist.Length - index);
						artist = current_artist.Substring(index + 2, length - 6);
					}
					else
					{
						int length = current_artist.Length - index;
						string temp = current_artist.Substring(index + 1, length - 1);
						int temp_index = temp.IndexOf('-');
						length = index + temp_index + 3;
						int lengthTitle = current_artist.Length - length;
						artist = current_artist.Substring(length, lengthTitle - 4);

					}
				}
                else
                {
                    artist = "unknown";
                }
                var formatting = @"hh\:mm\:ss";
                if (CrossMediaManager.Current.Duration.Hours <= 0)
                    formatting = @"mm\:ss";

                var fullLengthString = item.Duration.ToString(formatting);
                duration = fullLengthString;
                color = PlayerSettings.currentTheme;


                list.Add(new Song()
                {
                    Title = title.ToUpper(),
                    Artist = artist,
                    Duration = duration,
                    Number = i + 1,
                    Color = color
                });               
            }         
            songList_CV.ItemsSource = list;
        }
        private async void Title_Tapped(object sender, EventArgs e)
        {
            var selectedSong = (((Button)sender).BindingContext as Song);
            if (selectedSong == null)
                return;
            await CrossMediaManager.Current.PlayQueueItem(selectedSong.Number - 1);
            if (!CrossMediaManager.Current.IsPlaying())
                await CrossMediaManager.Current.Play();
			
		}
        private async void Title_Clicked(object sender, EventArgs e)
        {

            var selectedSong = (((Button)sender).BindingContext as Song);
            if (selectedSong == null)
                return;
            try
            {
                if ((selectedSong != null) && (switchNewPlaylist.IsToggled == true) && (searchSongs.Text.Length > 0))
                {
                    var selSong = (((Button)sender).BindingContext as Song);
                    string directory = PlayerSettings.folder;
                    //DisplayAlert("d", selectedSong.Number.ToString(), "s");
                    songs = Directory.EnumerateFiles(directory, "*.*").Where(s => s.ToUpper().Contains(searchSongs.Text.ToUpper()));
                    songs = songs.Reverse();                                      
                    await CrossMediaManager.Current.Play(songs);                   
                    MainPage.NextSong();
                }
            }
    
            catch { }
            
            await CrossMediaManager.Current.PlayQueueItem(selectedSong.Number - 1);
            if (!CrossMediaManager.Current.IsPlaying())
                await CrossMediaManager.Current.Play();
        }   
       public class Song
        {
            public string Artist { get; set; } 
            public string Title { get; set; }
            public string Duration { get; set; }
            public int Number { get; set; }
            public string Color { get; set; }
        }

        private void searchSongs_TextChanged(object sender, TextChangedEventArgs e)
        {          
                filteredList = list?.Where(a => a.Title.Contains(e.NewTextValue.ToUpper()) || a.Artist.Contains(e.NewTextValue.ToUpper()));
                //filteredList = list.Where(a => a.Title.Contains(e.NewTextValue.ToUpper()));
				songList_CV.ItemsSource = filteredList;
        }

		private void ContentPage_Appearing(object sender, EventArgs e)
		{
			if (CrossMediaManager.Current.Queue.MediaItems.Count > 0)
			{
				songPlayList();                
				int song = MainPage.indexCurrentSong;
                isAppearing = true;
			}
		}

		private void ContentPage_LayoutChanged(object sender, EventArgs e)
		{
            if(isAppearing == true)
            {
				Orientation = DeviceDisplay.MainDisplayInfo.Orientation.ToString();
				if (CrossMediaManager.Current.Queue.MediaItems.Count > 0)
				{
					if (Orientation == "Portrait")
					{
						int song = MainPage.indexCurrentSong;
						songList_CV.ScrollTo(song, animate: false);
					}
					else if (Orientation == "Landscape")
					{
						int song = MainPage.indexCurrentSong;
						songList_CV.ScrollTo(song, animate: false);
					}
				}
			}
            isAppearing = false;
		}

		private async void ContentPage_Disappearing(object sender, EventArgs e)
		{
            await Navigation.PopAsync();
		}
	}
}