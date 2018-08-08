using System;
using System.Collections;
using System.Collections.Generic;
using Xamarin.Forms;
using Kalect.Services;
using System.Linq;
using Kalect.Services.Entities;

namespace Kalect.Views
{
    public class AssessmentMasterPage : MasterDetailPage
    {
        public AssessmentMasterPage(string selectedValue)
        {
            NavigationPage.SetHasNavigationBar(this, false);
            
            ListView assessmentListView = new ListView
            {
                ItemsSource = GetLeftMenuItems(),
                BackgroundColor= Color.FromHex("#F8F9F9")
                                      
            };

            // Create the master page with the ListView.
            this.Master = new ContentPage
            {
                
                Title = "Assessment",
                Icon = "Hamburger_icon_25.png",
                Content = new StackLayout
                {
                    Children =
                    {
                        assessmentListView
                    }

                }
            };


            // Define a selected handler for the ListView.
            assessmentListView.ItemSelected += (sender, args) =>
            {
                if (args.SelectedItem.Equals("Signature"))
                {
                    this.Detail = new NavigationPage(new SignaturePage());

                }
                else
                {
                    //get the friendlyname of the selected left menu item
                    string selectedFriendlyName = AppDataWallet.SelectedAssessmentMetadata.Sections.FirstOrDefault<Sections>(X => X.SectionDisplayName == args.SelectedItem.ToString()).SectionFriendlyName;

                    /*if(AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber == 1000001)
                    {
                        this.Detail = new NavigationPage(new AssessmentCarouselPage(selectedFriendlyName));
                    }
                    else
                    {
                        this.Detail = new NavigationPage(new AssessmentDetailPage(selectedFriendlyName));
                    }*/
                    //this.Detail = new NavigationPage (new AssessmentDetailPage(selectedFriendlyName));
                    this.Detail = new NavigationPage(new AssessmentButtonPage(selectedFriendlyName));

                }
                // Set the BindingContext of the detail page.
                this.Detail.BindingContext = args.SelectedItem;

                // Show the detail page.
                this.IsPresented = false;
                //this.Title = AppManager.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString();
            };

            // Initialize the ListView selection.
            //this.Detail = new NavigationPage(new AssessmentDetailPage());
            //this.Detail = new NavigationPage(new AssessmentCarouselPage());
            this.Detail = new NavigationPage(new AssessmentButtonPage());
        }

        private List<string> GetLeftMenuItems()
        {
            //List of forms in the left menu
            //List<string> assessmentList =  SectionManager.GetPreventionSectionList();

            List<string> assessmentList = (from Sections in AppDataWallet.SelectedAssessmentMetadata.Sections
                                           select Sections.SectionDisplayName).ToList<string>();

            //Add custom left menu items
            //List<string> leftMenuItems = assessmentList.ToList<string>();
            assessmentList.Add("Signature");

            return assessmentList;
        }
    }
}

