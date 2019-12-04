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

            if (selectedIndex == 3)
            {
                lstData.ItemsSource = App.Database.GetAllFamilies();
            }

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

            if (selectedIndex == 3)
            {
                lstData.ItemsSource = App.Database.GetAllFamilies();
            }

            if (selectedIndex == 4)
            {
                lstData.ItemsSource = App.Database.GetAllLGBTQ();
            }
            if (selectedIndex == 5)
            {
                lstData.ItemsSource = App.Database.GetAllVeterans();
            } 
            if (selectedIndex == 6)
            {
                lstData.ItemsSource = App.Database.GetAllYouthServices();
            }
           
            if (selectedIndex == 7)
            {
                lstData.ItemsSource = App.Database.GetAllArt();
            } 

            if (selectedIndex == 8)
            {
                lstData.ItemsSource = App.Database.GetAllBenefitsAccess();
            }
            if (selectedIndex == 9)
            {
                lstData.ItemsSource = App.Database.GetAllClothing();
            }
            if (selectedIndex == 10)
            {
                lstData.ItemsSource = App.Database.GetAllCounseling();
            }

            if (selectedIndex == 11)
            {
                lstData.ItemsSource = App.Database.GetAllDropIn();
            }

            if (selectedIndex == 12)
            {
                lstData.ItemsSource = App.Database.GetAllDomesticViolence();
            }
            if (selectedIndex == 13)
            {
                lstData.ItemsSource = App.Database.GetAllEducation();
            }
            if (selectedIndex == 14)
            {
                lstData.ItemsSource = App.Database.GetAllEmergency();
            }

            if (selectedIndex == 15)
            {
                lstData.ItemsSource = App.Database.GetAllHaircuts();
            }

            if (selectedIndex == 16)
            {
                lstData.ItemsSource = App.Database.GetAllHealthServices();
            }

            if (selectedIndex == 17)
            {
                lstData.ItemsSource = App.Database.GetAllHIVTesting();
            }
            if (selectedIndex == 18)
            {
                lstData.ItemsSource = App.Database.GetAllLegalServices();
            }
            if (selectedIndex == 19)
            {
                lstData.ItemsSource = App.Database.GetAllMeals();
            }

            if (selectedIndex == 20)
            {
                lstData.ItemsSource = App.Database.GetAllMentalHealth();
            }

            if (selectedIndex == 21)
            {
                lstData.ItemsSource = App.Database.GetAllNonEmergency();
            }

            if (selectedIndex == 22)
            {
                lstData.ItemsSource = App.Database.GetAllPersonalCare();
            }

            if (selectedIndex == 23)
            {
                lstData.ItemsSource = App.Database.GetAllRecovery();
            }
            if (selectedIndex == 24)
            {
                lstData.ItemsSource = App.Database.GetAllShelter();
            }
            if (selectedIndex == 25)
            {
                lstData.ItemsSource = App.Database.GetAllShowers();
            }

            if (selectedIndex == 26)
            {
                lstData.ItemsSource = App.Database.GetAllSTITesting();
            }

            if (selectedIndex == 27)
            {
                lstData.ItemsSource = App.Database.GetAllSupportGroups();
            }

            if (selectedIndex == 28)
            {
                lstData.ItemsSource = App.Database.GetAllSyringeExchange();
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
