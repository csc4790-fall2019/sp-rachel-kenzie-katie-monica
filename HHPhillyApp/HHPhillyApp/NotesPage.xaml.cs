using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Xamarin.Forms;
using HHPhillyApp.Models;
using HHPhillyApp;

namespace HHPhillyApp
{
    public partial class NotesPage : ContentPage
    {

        public NotesPage()
        {
            InitializeComponent();
        }


        protected override void OnAppearing()
        {
            base.OnAppearing();

            var notes = new List<Note>();

            var files = Directory.EnumerateFiles(App.FolderPath, "*.notes.txt");
            foreach (var filename in files)
            {
                notes.Add(new Note
                {
                    Filename = filename,
                    Text = File.ReadAllText(filename),
                    Date = File.GetCreationTime(filename)
                });
            }

            listView.ItemsSource = notes
                .OrderBy(d => d.Date)
                .ToList();
        }

    }
}