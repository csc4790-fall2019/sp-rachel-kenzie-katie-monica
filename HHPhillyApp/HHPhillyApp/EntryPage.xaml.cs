using HHPhillyApp;
using HHPhillyApp.Models;
using System;
using System.IO;
using Xamarin.Forms;

namespace HHPhillyApp
{
    public partial class EntryPage : ContentPage
    {
        public EntryPage()
        {
            InitializeComponent();
        }

        async void OnSaveButtonClicked()
        {
            await Navigation.PushAsync(new EntryPage());

        }
    }
}
