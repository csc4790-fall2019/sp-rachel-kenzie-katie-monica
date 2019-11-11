using System;
using System.Collections.Generic;
using Xamarin.Forms;

namespace HHPhillyApp
{
    public class ListItems : ContentPage
    {
        public List<String> Items
        {
            get { return new List<String> { "One", "Two", "Three" }; }
        }
    }
}

