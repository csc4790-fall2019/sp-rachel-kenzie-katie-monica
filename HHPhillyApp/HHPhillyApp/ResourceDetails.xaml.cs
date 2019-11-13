using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace HHPhillyApp
{
    public partial class ResourceDetails : ContentPage
    {
        public ResourceDetails()
        {
            InitializeComponent();
        }

        async void OnCancelClicked(object sender, EventArgs e)
        {
            await Navigation.PopAsync();
        }
    }
}
