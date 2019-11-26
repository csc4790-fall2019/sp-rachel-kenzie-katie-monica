using HHPhillyApp;
using HHPhillyApp.Models;
using System;
using System.IO;
using Xamarin.Forms;
using SQLite;
using System.Linq;
using System.Collections.Generic;
using System.ComponentModel;

namespace HHPhillyApp
{
    public partial class EntryPage : ContentPage
    {
        public EntryPage()
        {
            InitializeComponent();
            var vList = App.Database.GetAllResources();
            lstData.ItemsSource = vList;
            //searchResults.ItemsSource = vList;
            // searchResults.ItemsSource = DataService.ResourceNames
        }

        void OnTextChanged(object sender, EventArgs e)
        {
            SearchBar searchBar = (SearchBar)sender;
            lstData.ItemsSource = App.Database.GetAllMen();
           // lstData.ItemsSource = DataService.GetSearchResults(searchBar.Text);
            //searchResults.ItemsSource = getSearchResults(searchBar.Text);
           // searchResults.ItemsSource = DataService.GetSearchResults(searchBar.Text);
            //searchResults.ItemsSource = DataService.GetSearchResults(searchBar.Text);
        }

        void OnPickerSelectedIndexChanged(object sender, EventArgs e)
        {
            var picker = (Picker)sender;
            int selectedIndex = picker.SelectedIndex;

            if (selectedIndex == 0)
            {
                lstData.ItemsSource = App.Database.GetAllResources();
            }
            if (selectedIndex == 1)
            {
                lstData.ItemsSource = App.Database.GetAllMen();
            }
            if (selectedIndex == 2)
            {
                lstData.ItemsSource = App.Database.GetAllWomen();
            }
        }

        void OnSearchButtonPressed(object sender, EventArgs e)
        {
            SearchBar bar = (SearchBar)sender;
            //lstData.ItemsSource = DataService.GetSearchResults(bar.Text);
        }

		void OnClicked(object sender, SelectedItemChangedEventArgs e)
		{
            if (e.SelectedItem == null)
            {
                return;
            }
            var vSelUser = (Resources)e.SelectedItem;
            Navigation.PushAsync(new ResourceDetails(vSelUser));
        }

    }
}
