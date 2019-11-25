using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace HHPhillyApp
{
    public partial class ResourceDetails : ContentPage
    {
        Resources mSelResource;
        public ResourceDetails(Resources aSelectedResource)
        {
            InitializeComponent();
            mSelResource = aSelectedResource;
            BindingContext = mSelResource;
        }

        async void OnCancelClicked(object sender, EventArgs e)
        {
            await Navigation.PopAsync();
        }
    }
}
