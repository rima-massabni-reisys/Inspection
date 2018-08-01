using System;
using System.IO;
using System.Text;
using Xamarin.Forms;
using Plugin.Geolocator;
using System.Threading.Tasks;
using Plugin.Geolocator.Abstractions;
using System.Threading;

namespace Kalect.Views
{
    public class DefaultScreen : ContentPage
    {
       
        async void GetGeoLocation()
        {
            var locator = CrossGeolocator.Current;
            locator.DesiredAccuracy = 50;

            var position = await locator.GetPositionAsync(TimeSpan.FromSeconds(10));
            latitudeLabel.Text = "Latitude: " + position.Latitude + " ,Longitude: " + position.Longitude;
            AppManager.Location = position.Latitude + "," + position.Longitude;
        }

        string location = string.Empty;
        Label latitudeLabel;
        public DefaultScreen()
        {
            //string result = GetLocation();
            GetGeoLocation();
            //Page level padding
            this.Padding = new Thickness(5, 20, 5, 0);

            latitudeLabel = new Label();
            latitudeLabel.FontSize = 8;//Device.GetNamedSize(NamedSize.Small, typeof(Label));
            latitudeLabel.HorizontalOptions = LayoutOptions.CenterAndExpand;
            /*Definign ScrollView and StackLayout. Reverse engineer from here*/
            Content = new ScrollView
            {
                Content = new StackLayout
                {
                    Children = {
                        latitudeLabel,
                        new Label { Text = "Welcome",
                        HorizontalOptions = LayoutOptions.CenterAndExpand,
                        VerticalOptions = LayoutOptions.CenterAndExpand,
                        FontSize = Device.GetNamedSize(NamedSize.Large, typeof(Label)),
                        FontAttributes = FontAttributes.Bold | FontAttributes.Italic
                        }
                    }
                }
            };
        }


    }
}
 