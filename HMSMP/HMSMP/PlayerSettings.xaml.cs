using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;
using Xamarin.CommunityToolkit.Behaviors;

namespace HMSMP
{
	public interface IThemeChange
	{
		void changeTheme();
	}
	[XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PlayerSettings : ContentPage
    {
        public static string folder;
        public static bool loadMusic;
        public static string currentTheme;
        string Orientation;
	
		public PlayerSettings()
        {
            InitializeComponent();

			var switchFolder = Preferences.Get("switchFolder", false);
            loadMusic = Preferences.Get("loadMusic", false);
            currentTheme = themePicker.SelectedItem.ToString();
            if(switchFolder == true)
            {
                folderName.Text = Preferences.Get("folderName", string.Empty);
            }
            saveFolderName.IsToggled = Preferences.Get("switchFolder", false);
            loadSongsSwitch.IsToggled = Preferences.Get("loadMusic", false);
            folder = folderName.Text;
            List<string> themes = new List<string>{ "Black", "White" };
            themePicker.ItemsSource = themes;
            if(Preferences.Get("currentTheme", currentTheme)!= null)
            {
                themePicker.SelectedItem = Preferences.Get("currentTheme", currentTheme);
            }
            else { themePicker.SelectedItem = currentTheme; }
			DeviceDisplay.MainDisplayInfoChanged += updateLayout;
			themePicker.SelectedIndexChanged += themePickerTheme_Changed;
			launchTheme();
            startLayout();	

            
        }
        void startLayout()
        {
			Orientation = DeviceDisplay.MainDisplayInfo.Orientation.ToString();
			if (Orientation == "Portrait")
			{
				folderfindRow.Height = MainPage.phoneHeight * 0.05;
                saveFolderRow.Height = MainPage.phoneHeight * 0.05;   
				folderNameRow.Height = MainPage.phoneHeight * 0.05;
				loadSongRow.Height = MainPage.phoneHeight * 0.05;
				themePickerRow.Height = MainPage.phoneHeight * 0.05;
				buttonsRow.Height = MainPage.phoneHeight * 0.6;
				themePicker.HorizontalOptions = LayoutOptions.EndAndExpand;
			}
			else if (Orientation == "Landscape")
			{
				folderfindRow.Height = MainPage.phoneWidth * 0.1;
				saveFolderRow.Height = MainPage.phoneHeight * 0.05;
				folderNameRow.Height = MainPage.phoneWidth * 0.12;
				loadSongRow.Height = MainPage.phoneWidth * 0.1;
				themePickerRow.Height = MainPage.phoneWidth * 0.12;
				buttonsRow.Height = MainPage.phoneWidth * 0.25;
				themePicker.HorizontalOptions = LayoutOptions.CenterAndExpand;
			}
		}
        void updateLayout(object sender, DisplayInfoChangedEventArgs e)
        {
			Orientation = DeviceDisplay.MainDisplayInfo.Orientation.ToString();
			if (Orientation == "Portrait")
			{
				folderfindRow.Height = MainPage.phoneHeight * 0.05;
				saveFolderRow.Height = MainPage.phoneHeight * 0.05;
				folderNameRow.Height = MainPage.phoneHeight * 0.05;
				loadSongRow.Height = MainPage.phoneHeight * 0.05;
				themePickerRow.Height = MainPage.phoneHeight * 0.05;
				buttonsRow.Height = MainPage.phoneHeight * 0.6;
                themePicker.HorizontalOptions = LayoutOptions.EndAndExpand;
			}
			else if (Orientation == "Landscape")
			{
				folderfindRow.Height = MainPage.phoneWidth * 0.1;
                saveFolderRow.Height = MainPage.phoneHeight * 0.05;
				folderNameRow.Height = MainPage.phoneWidth * 0.12;
				loadSongRow.Height = MainPage.phoneWidth * 0.1;
				themePickerRow.Height = MainPage.phoneWidth * 0.12;
				buttonsRow.Height = MainPage.phoneWidth * 0.25;
                themePicker.HorizontalOptions = LayoutOptions.CenterAndExpand;
			}
		}
      
        private void themePickerTheme_Changed(object sender, EventArgs e)   
        {

            currentTheme = themePicker.SelectedItem.ToString();
			Preferences.Set("currentTheme", currentTheme);
			var mainpage = Application.Current.MainPage;
            var songlist = new songList();
			Xamarin.Forms.DependencyService.Get<IThemeChange>().changeTheme();
			if (currentTheme == "White")
            {
				(mainpage as MainPage).shellMainPage.FlyoutBackgroundColor = Xamarin.Forms.Color.White;
				PlayerSettings_Layout.BackgroundColor = Xamarin.Forms.Color.White;
				SaveSettings.BackgroundColor = Xamarin.Forms.Color.White;
				ResetSettings.BackgroundColor = Xamarin.Forms.Color.White;
				(mainpage as MainPage).lad.Background = Xamarin.Forms.Color.White;
				(mainpage as MainPage).Find_music.Background = Brush.White;
                (mainpage as MainPage).music_List.Background = Brush.White;
                (mainpage as MainPage).Settings.Background = Brush.White;
                (mainpage as MainPage).shuffle.Background = Brush.White;
                (mainpage as MainPage).playerNext.Background = Brush.White;
                (mainpage as MainPage).playerPause.Background = Brush.White;
                (mainpage as MainPage).playerPlay.Background = Brush.White;
                (mainpage as MainPage).playerPrev.Background = Brush.White;
				(mainpage as MainPage).shellMainPage.FlyoutBackgroundColor = Xamarin.Forms.Color.White;
			}
            else if(currentTheme == "Black")
            {
				(mainpage as MainPage).shellMainPage.FlyoutBackgroundColor = Xamarin.Forms.Color.Black;
				PlayerSettings_Layout.BackgroundColor = Xamarin.Forms.Color.Black;
				SaveSettings.BackgroundColor = Xamarin.Forms.Color.Black;
				ResetSettings.BackgroundColor = Xamarin.Forms.Color.Black;
				(mainpage as MainPage).lad.Background = Xamarin.Forms.Color.Black;
				(mainpage as MainPage).Find_music.Background = Brush.Black;
				(mainpage as MainPage).music_List.Background = Brush.Black;
				(mainpage as MainPage).Settings.Background = Brush.Black;
				(mainpage as MainPage).shuffle.Background = Brush.Black;
				(mainpage as MainPage).playerNext.Background = Brush.Black;
				(mainpage as MainPage).playerPause.Background = Brush.Black;
				(mainpage as MainPage).playerPlay.Background = Brush.Black;
				(mainpage as MainPage).playerPrev.Background = Brush.Black;
                (mainpage as MainPage).shellMainPage.FlyoutBackgroundColor = Xamarin.Forms.Color.Black ;
			}
        }
        private void launchTheme()
        {            
            currentTheme = Preferences.Get("currentTheme", currentTheme);
            if (currentTheme == "White")
            {
				PlayerSettings_Layout.BackgroundColor = Xamarin.Forms.Color.White;
				SaveSettings.BackgroundColor = Xamarin.Forms.Color.White;
				ResetSettings.BackgroundColor = Xamarin.Forms.Color.White;
			}
            else if(currentTheme == "Black")
            {
                PlayerSettings_Layout.BackgroundColor = Xamarin.Forms.Color.Black;
                SaveSettings.BackgroundColor = Xamarin.Forms.Color.Black;
                ResetSettings.BackgroundColor = Xamarin.Forms.Color.Black;  
            }
        }
        private void SaveSettings_Clicked(object sender, EventArgs e)
        {
            Preferences.Set("folderName", folderName.Text);
            Preferences.Set("switchFolder", saveFolderName.IsToggled);
            Preferences.Set("loadMusic", loadSongsSwitch.IsToggled);
            
        }
        private void ResetSettings_Clicked(object sender, EventArgs e)
        {
            Preferences.Clear();
            folderName.Text = "/storage/emulated/0/Music";
        }
    }
}