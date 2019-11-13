using HHPhillyApp;
using HHPhillyApp.Models;
using System;
using System.IO;
using Xamarin.Forms;

namespace HHPhillyApp
{
    public partial class ResourceDetailsPage : ContentPage
    {
        public ResourceDetailsPage()
        {
            InitializeComponent();
        }

        async void OnCancelClicked(object sender, EventArgs e)
        {
            await Navigation.PopAsync();
        }
    }
}
