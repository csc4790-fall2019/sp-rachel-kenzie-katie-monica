using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace HHPhillyApp
{
    // Learn more about making custom code visible in the Xamarin.Forms previewer
    // by visiting https://aka.ms/xamarinforms-previewer
    [DesignTimeVisible(false)]
    public partial class Main : ContentPage
    {
        public Main()
        {
            InitializeComponent();

        }

        async void NavigateButton_OnClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ListPage());
        }
    }
}
