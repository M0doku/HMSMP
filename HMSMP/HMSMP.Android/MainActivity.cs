using System;
using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;
using Android.Media;
using MediaManager;
using Android.Support.V4.App;
// using Android.Support.V4.Media.App;
using Android.Service.Controls.Actions;
using Xamarin.Forms;
using Xamarin.Essentials;
using Com.Google.Android.Exoplayer2;
using System.ComponentModel.Design;
using System.Drawing;
using Android.Graphics.Drawables;
using Android.Media.Session;
using Android.Content;
using Android.Support.V4.Media;
using MediaManager.Media;
using MediaManager.Library;
using MediaManager.Playback;
using MediaManager.Player;
using MediaManager.Queue;
using AndroidX.Core.App;
using Xamarin.Android;
using Android;
using System.ComponentModel;
using Android.Widget;
using System.Security.Cryptography.X509Certificates;
using Android.Content.Res;
using Xamarin.Forms.Platform.Android;
using HMSMP;
using HMSMP.Droid;
using Xamarin.Forms.PlatformConfiguration.iOSSpecific;
using Android.Views;
using static Android.Views.GestureDetector;
using static Android.Views.View;
using static HMSMP.Droid.MainActivity;

[assembly: Xamarin.Forms.Dependency(typeof(MainActivity.themeChange))]
namespace HMSMP.Droid
{
    [Activity(Label = "HMSMP", Icon = "@drawable/hmp_logo", Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize )]
	public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        public static string CHANNEL_ID_1 = "CHANNEL_1";
		private string theme;
		public static MainActivity Instance;
		public static Android.Views.Window window;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            CrossMediaManager.Current.Init();
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);
            RequestStorageAccess();
			LoadApplication(new App());
            CrossMediaManager.Current.MediaItemChanged += songChanged;
			PlayerSettings PS = new PlayerSettings();
			Instance = this;
			window = this.Window;
			themesPicker();
			
			/*
               System.Action action = () => Play();
               Intent intent = new Intent(Intent.ActionMediaButton);
               PendingIntent pi = PendingIntent.GetActivity(this, 0, intent, 0);
               var notification = new NotificationCompat.Builder(this, CHANNEL_ID_1)
                   .SetVisibility(NotificationCompat.VisibilityPublic)
                   .SetSmallIcon(Resource.Drawable.hmp_logo1)
                   .AddAction(Resource.Drawable.prev_button, "Previous", pi)


                   .Build();
                   */

		}
		public class themeChange : IThemeChange
		{
			public void changeTheme()
			{
				if (PlayerSettings.currentTheme == "Black")
				{
					Instance.SetStatusBarColor(Android.Graphics.Color.Black);
					var mainColor = Android.Graphics.Color.Black;
					window.SetNavigationBarColor(mainColor);
					var flag = (Android.Views.StatusBarVisibility)Android.Views.SystemUiFlags.Visible;
					window.DecorView.SystemUiVisibility = flag;
				}
				else if(PlayerSettings.currentTheme == "White")
				{
					Instance.SetStatusBarColor(Android.Graphics.Color.White);

					var mainColor = Android.Graphics.Color.White;
					window.SetNavigationBarColor(mainColor);
					var flag = (Android.Views.StatusBarVisibility)Android.Views.SystemUiFlags.LightStatusBar;
					window.DecorView.SystemUiVisibility = flag;
				}
			}
		}
		
		private void themesPicker()
		    {
			if (PlayerSettings.currentTheme == "Black")
			{
				Instance.SetStatusBarColor(Android.Graphics.Color.Black);
				var mainColor = Android.Graphics.Color.Black;
				window.SetNavigationBarColor(mainColor);
				var flag = (Android.Views.StatusBarVisibility)Android.Views.SystemUiFlags.Visible;
				window.DecorView.SystemUiVisibility = flag;
				//Instance.Window.AddFlags(WindowManagerFlags.Fullscreen);
			}
			else if (PlayerSettings.currentTheme == "White")
			{
				Instance.SetStatusBarColor(Android.Graphics.Color.White);

				var mainColor = Android.Graphics.Color.White;
				window.SetNavigationBarColor(mainColor);
				var flag = (Android.Views.StatusBarVisibility)Android.Views.SystemUiFlags.LightStatusBar;
				window.DecorView.SystemUiVisibility = flag;
			}
		}
		private void notificationUpdate(object sender, PropertyChangedEventArgs e)
		{
            Console.WriteLine("NOTIFICATION UPDATE1");
		}

		private void RequestStorageAccess()
		{
			if (!Android.OS.Environment.IsExternalStorageManager)
			{
				StartActivityForResult(new Intent(Android.Provider.Settings.ActionManageAllFilesAccessPermission), 3);
			}
		}
		private void songChanged(object sender, MediaItemEventArgs e)
		{
			CrossMediaManager.Current.Queue.Current.IsMetadataExtracted = false;
			Bundle bundle = new Bundle();
			bundle.PutString(MediaMetadataCompat.MetadataKeyArtist, MainPage.artist_android);
			CrossMediaManager.Current.Queue.Current.Extras = bundle;
			CrossMediaManager.Current.Queue.Current.DisplayTitle = MainPage.title_android;
			CrossMediaManager.Current.Queue.Current.IsMetadataExtracted = true;
			Console.WriteLine("SONGS: ");
			
		}
		public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
	}
}