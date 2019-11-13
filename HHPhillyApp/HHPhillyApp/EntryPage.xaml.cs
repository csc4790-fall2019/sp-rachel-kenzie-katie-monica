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
            searchResults.ItemsSource = DataService.ResourceNames;
        }

        void OnTextChanged(object sender, EventArgs e)
        {
            SearchBar searchBar = (SearchBar)sender;
            searchResults.ItemsSource = DataService.GetSearchResults(searchBar.Text);
        }

        void OnSearchButtonPressed(object sender, EventArgs e)
        {
            SearchBar bar = (SearchBar)sender;
            searchResults.ItemsSource = DataService.GetSearchResults(bar.Text);
        }

		void OnClicked(object sender, EventArgs e)
		{
			Navigation.PushAsync(new ResourceDetails());
		}
	}
}
