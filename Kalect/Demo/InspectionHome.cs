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

            inspectionListPage.Icon = "Group3.png";
            inspectionListPage.Title = "Dashboard";


            Children.Add(inspectionListPage);
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            //InspectionListLoad();
        }

    }
}

