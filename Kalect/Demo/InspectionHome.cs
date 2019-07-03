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


            var productPage = new NavigationPage(new ProductInformation())
            {
                BarBackgroundColor = Color.FromHex("#025085"),
                BarTextColor = Color.Black
            };

            productPage.Icon = "product.png";
            productPage.Title = "Product";


            Children.Add(inspectionListPage);
            Children.Add(productPage);
            Children.Add(aboutPage);
        }

        /*protected override void OnAppearing()
        {
            base.OnAppearing();

            //InspectionListLoad();
        }*/

    }
}

