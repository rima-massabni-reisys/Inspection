using System;

using Xamarin.Forms;

namespace Kalect.Demo
{
    public class AboutPage : ContentPage
    {
        public AboutPage()
        {
            Image reiImage = new Image();
            reiImage.Source = "reisystems.jpg";

            Label appVersion = new Label();
            appVersion.Text = "Inspection v0.0.1";

            Content = new StackLayout
            {
                Orientation = StackOrientation.Vertical,
                VerticalOptions = LayoutOptions.CenterAndExpand,
                HorizontalOptions = LayoutOptions.CenterAndExpand,

                Children =
                {
                    reiImage,
                    appVersion
                }
            };
        }
    }
}

