using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using MediaManager;

namespace HMSMP
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            CrossMediaManager.Current.Init();
            MainPage = new MainPage();
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
