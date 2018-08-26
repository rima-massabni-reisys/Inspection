using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using Kalect.Services.Entities;
using Xamarin.Forms;

namespace Kalect.Demo
{
    public class InspectionMaster : MasterDetailPage
    {
        public InspectionMaster(string selectedInspection)
        {
            NavigationPage.SetHasNavigationBar(this, false);
 
            //var inspectionDetailCell = new DataTemplate(typeof(InspectionDetailCell));
            ListView assessmentListView = new ListView
            {
                ItemsSource = GetLeftMenuItems(),
                //ItemTemplate = inspectionDetailCell
                //BackgroundColor = Color.FromHex("#F8F9F9")
            };



            /*
            //Bind forms
            inspectionList.ItemsSource = assessments;
            inspectionList.ItemTemplate = customAssessmentCell;*/

            assessmentListView.SeparatorVisibility = SeparatorVisibility.None;

            IsGestureEnabled = false;

            this.Master = new ContentPage
            {
                Title = "Inspection",
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
                //((ListView)sender).SelectedItem = Color.FromHex("#3693FF");
                IsGestureEnabled = false;
                if (args.SelectedItem.Equals("Submit"))
                {
                    this.Detail = new NavigationPage(new Signature());

                }
                else if(args.SelectedItem.Equals("Review"))
                {
                    this.Detail = new NavigationPage(new InspectionReview()); //new NavigationPage(new GroupedList()); //new NavigationPage(new InspectionReview());
                }
                else
                {
                    //get the friendlyname of the selected left menu item
                    //string selectedFriendlyName = AppDataWallet.SelectedAssessmentMetadata.Sections.FirstOrDefault<Sections>(X => X.SectionDisplayName == args.SelectedItem.ToString()).SectionFriendlyName;

                    this.Detail = new NavigationPage(new InspectionDetail(AppDataWallet.SelectedAssessmentMetadata.Sections.FirstOrDefault<Sections>(X => X.SectionDisplayName == args.SelectedItem.ToString())))
                    {
                        BarBackgroundColor = Color.FromHex("#025085"),
                        BarTextColor = Color.White
                    };

                }
                // Set the BindingContext of the detail page.
                this.Detail.BindingContext = args.SelectedItem;
                // Show the detail page.
                this.IsPresented = false;

            };

            //string defaultFirstFriendlyName = AppDataWallet.SelectedAssessmentMetadata.Sections.First<Sections>().SectionFriendlyName;
            this.Detail = new NavigationPage(new InspectionDetail(AppDataWallet.SelectedAssessmentMetadata.Sections.First<Sections>()))
            {
                
                BarBackgroundColor = Color.FromHex("#025085"),
                BarTextColor = Color.White
            };

        }

        private List<string> GetLeftMenuItems()
        {
            //List of forms in the left menu
            List<string> assessmentList = (from Sections in AppDataWallet.SelectedAssessmentMetadata.Sections
                                           select Sections.SectionDisplayName).ToList<string>();

            //Add Review
            assessmentList.Add("Review");
            //Add custom left menu items
            assessmentList.Add("Submit");

            return assessmentList;
        }
    }

    public class InspectionDetailCell : ViewCell
    {
        public InspectionDetailCell()
        {
            StackLayout cellWrapper = new StackLayout();
            cellWrapper.BackgroundColor = Color.FromHex("#3693FF");
            View = cellWrapper;
           /*
            //instantiate each of our views
            //var image = new Image();
            StackLayout cellWrapper = new StackLayout();
            StackLayout horizontalLayout = new StackLayout();
            Label orgName = new Label();
            Label trackingNo = new Label();
            trackingNo.FontSize = 10;
            trackingNo.TextColor = Color.Gray;
            Label status = new Label();
            //status.Text = "Not Started";
            status.FontSize = 10;
            status.TextColor = Color.Gray;

            //set bindings
            trackingNo.SetBinding(Label.TextProperty, "AssessmentTrackingNumber");
            orgName.SetBinding(Label.TextProperty, "OrganizationName");
            status.SetBinding(Label.TextProperty, "AssessmentStatus");
            //image.SetBinding(Image.SourceProperty, "image");

            //Set properties for desired design
            //cellWrapper.BackgroundColor = Color.FromHex("#eee");
            horizontalLayout.Orientation = StackOrientation.Horizontal;
            status.HorizontalOptions = LayoutOptions.EndAndExpand;

            //add views to the view hierarchy
            //horizontalLayout.Children.Add(image);
            cellWrapper.Children.Add(orgName);
            horizontalLayout.Children.Add(trackingNo);
            horizontalLayout.Children.Add(status);
            cellWrapper.Children.Add(horizontalLayout);
            View = cellWrapper;// horizontalLayout;//cellWrapper;
            */
        }
    }
}

