using System;
using System.IO;
using System.Collections.Generic;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace HHPhillyApp
{
    public partial class App : Application
    {
        static SQLiteDatabase dbUtils;

        public static string FolderPath { get; internal set; }
        public App()
        {
            InitializeComponent();
            //FolderPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData));
            MainPage = new NavigationPage(new EntryPage());
           // MainPage = new NavigationPage(new NotesPage());
        }

        public static SQLiteDatabase Database
        {
            get
            {
                if (dbUtils == null)
                {
                    dbUtils = new SQLiteDatabase();
                }
                return dbUtils;
            }
        }

        protected override void OnStart()
        {
            // Handle when your app starts
        }

        protected override void OnSleep()
        {
            // Handle when your app sleeps
        }

        protected override void OnResume()
        {
            // Handle when your app resumes
        }
    }
}
