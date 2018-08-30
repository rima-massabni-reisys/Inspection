using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using Kalect.Services.Entities;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace Kalect.Demo
{
    public class InspectionMaster : MasterDetailPage
    {
        public InspectionMaster(string selectedInspection)
        {
            NavigationPage.SetHasNavigationBar(this, false);
 
            var inspectionDetailCell = new DataTemplate(typeof(InspectionDetailCell));
            ListView assessmentListView = new ListView
            {
                ItemsSource = GetLeftMenuItemsList(), //GetLeftMenuItems(),
                ItemTemplate = inspectionDetailCell
                //BackgroundColor = Color.FromHex("#F8F9F9")
            };



            /*
            //Bind forms
            inspectionList.ItemsSource = assessments;
            inspectionList.ItemTemplate = customAssessmentCell;*/

            assessmentListView.SeparatorVisibility = SeparatorVisibility.None;

            IsGestureEnabled = false;
            this.WidthRequest = 200;

            /*if (IsPhone())
            {
                this.MasterBehavior = MasterBehavior.Split;
                //this.IsPresented = true; //true;
            }*/



            this.Master = new ContentPage
            {
                Title = "Inspection",
                Icon = "Hamburger_icon_25.png",

                Content = new StackLayout
                {
                    //Padding = new Thickness(0, 20, 0, 0),
                    Margin = new Thickness(0, 20, 0, 0),
                    Children =
                    {
                        assessmentListView
                    }

                }
            };

            // Define a selected handler for the ListView.
            assessmentListView.ItemSelected += (sender, args) =>
            {
                LeftMenuItem selectedLeftMenuItem = (LeftMenuItem)args.SelectedItem;
                //((ListView)sender).SelectedItem = Color.FromHex("#3693FF");
                IsGestureEnabled = false;
                if (selectedLeftMenuItem.DisplayName.Equals("Submit"))
                {
                    this.Detail = new NavigationPage(new Signature());

                }
                else if(selectedLeftMenuItem.DisplayName.Equals("Review"))
                {
                    this.Detail = new NavigationPage(new InspectionReview()); //new NavigationPage(new GroupedList()); //new NavigationPage(new InspectionReview());
                }
                else if(selectedLeftMenuItem.DisplayName.Equals(""))
                {
                    //empty
                }
                else
                {
                    //get the friendlyname of the selected left menu item
                    //string selectedFriendlyName = AppDataWallet.SelectedAssessmentMetadata.Sections.FirstOrDefault<Sections>(X => X.SectionDisplayName == args.SelectedItem.ToString()).SectionFriendlyName;

                    this.Detail = new NavigationPage(new InspectionDetail(AppDataWallet.SelectedAssessmentMetadata.Sections.FirstOrDefault<Sections>(X => X.SectionDisplayName ==  selectedLeftMenuItem.DisplayName)))
                    {
                        BarBackgroundColor = Color.FromHex("#025085"),
                        BarTextColor = Color.White
                    };

                }
                // Set the BindingContext of the detail page.
                this.Detail.BindingContext = args.SelectedItem;
                // Show the detail page.

                /*if (!IsPhone())
                {
                    this.IsPresented = true; //true;
                }
                else{*/
                    this.IsPresented = false; //true;
                //}


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
            List<LeftMenuItem> leftMenuItems = new List<LeftMenuItem>();

            //List of forms in the left menu
            List<string> assessmentList = (from Sections in AppDataWallet.SelectedAssessmentMetadata.Sections
                                           select Sections.SectionDisplayName).ToList<string>();

            //Add Review
            assessmentList.Add("Review");
            //Add custom left menu items
            assessmentList.Add("Submit");

            return assessmentList;
        }

        private List<LeftMenuItem> GetLeftMenuItemsList()
        {
            List<LeftMenuItem> leftMenuItems = new List<LeftMenuItem>();

            //List of forms in the left menu
            List<string> assessmentList = (from Sections in AppDataWallet.SelectedAssessmentMetadata.Sections
                                           select Sections.SectionDisplayName).ToList<string>();

            //Add Review
            assessmentList.Add("Review");
            //Add custom left menu items
            assessmentList.Add("Submit");

            foreach(string item in assessmentList)
            {
                LeftMenuItem leftMenuItem = new LeftMenuItem();
                leftMenuItem.DisplayName = item;
                leftMenuItem.StatusCode = 1;
                leftMenuItem.Status = "Not Started";
                leftMenuItem.Icon = "NotStarted";

                leftMenuItems.Add(leftMenuItem);
            }

            return leftMenuItems;
        }

        bool IsPhone()
        {
            var idiom = DeviceInfo.Idiom;
            if (idiom.ToLower().Equals("phone"))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }


    public class InspectionDetailCell : ViewCell
    {
        public InspectionDetailCell()
        {
            StackLayout cellWrapper = new StackLayout();
            cellWrapper.Padding = new Thickness(10,10,5,10);

            Image statusIcon = new Image();
            statusIcon.Source = "reddot.png";

            Label lblSectionName = new Label();
            lblSectionName.SetBinding(Label.TextProperty, "DisplayName");

            StackLayout leftMenuItemLayout = new StackLayout();
            leftMenuItemLayout.Orientation = StackOrientation.Horizontal;
            leftMenuItemLayout.Padding = new Thickness(10, 10, 5, 10);

            leftMenuItemLayout.Children.Add(statusIcon);
            leftMenuItemLayout.Children.Add(lblSectionName);

            cellWrapper.Children.Add(leftMenuItemLayout);

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

