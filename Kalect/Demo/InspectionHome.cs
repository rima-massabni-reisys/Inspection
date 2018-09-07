using System;

using Xamarin.Forms;

namespace Kalect.Demo
{
    public class InspectionHome : TabbedPage
    {
        public InspectionHome()
        {
            InspectionListLoad();
        }

        public void InspectionListLoad()
        {
            var inspectionListPage = new NavigationPage(new InspectionList())
            {
                BarBackgroundColor = Color.FromHex("#025085"),
                BarTextColor = Color.White
            };

            inspectionListPage.Icon = "dashboard.png";
            inspectionListPage.Title = "Dashboard";

            var aboutPage = new NavigationPage(new AboutPage())
            {
                BarBackgroundColor = Color.FromHex("#025085"),
                BarTextColor = Color.White
            };

            aboutPage.Icon = "AboutIcon.png";
            aboutPage.Title = "About";

            Children.Add(inspectionListPage);
            Children.Add(aboutPage);
        }

        /*protected override void OnAppearing()
        {
            base.OnAppearing();

            //InspectionListLoad();
        }*/

    }
}

