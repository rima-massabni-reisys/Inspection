using System;
using System.IO;
using System.Text;
//using Plugin.Badge;
using Xamarin.Forms;


namespace Kalect.Views
{
    public class WelcomePage : TabbedPage
    {
        public WelcomePage()
        {
            var navigationPage = new NavigationPage(new DefaultScreen());
            navigationPage.Icon = "Home_25.png";
            navigationPage.Title = "Home";

            var assessmenPage = new NavigationPage(new AvailableAssessmentList());
            assessmenPage.Icon = "IconList_25.png";
            assessmenPage.Title = "Assessments";

            Children.Add(navigationPage);
            Children.Add(assessmenPage);

            //CrossBadge.Current.SetBadge(10);

        }

    }
}
 