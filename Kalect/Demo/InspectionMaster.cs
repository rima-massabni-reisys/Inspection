using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using Kalect.Services.Entities;
using Kalect.Services.Interfaces;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace Kalect.Demo
{
    public class InspectionMaster : MasterDetailPage
    {
        void SetSplitModeOnOrientation()
        {
            if (!IsPhone())
            {
                var orientation = DependencyService.Get<IDeviceOrientationDependenyServices>().GetOrientation();
                switch (orientation)
                {
                    case DeviceOrientation.Undefined:
                        this.MasterBehavior = MasterBehavior.Popover;
                        break;
                    case DeviceOrientation.Landscape:
                        this.MasterBehavior = MasterBehavior.Split;
                        break;
                    case DeviceOrientation.Portrait:
                        this.MasterBehavior = MasterBehavior.Popover;
                        break;
                }
            }
            else
            {
                this.MasterBehavior = MasterBehavior.Popover;
            }
        }

        void SetMasterPresentationOnOrientation()
        {
            if(!IsPhone())
            {
                var orientation = DependencyService.Get<IDeviceOrientationDependenyServices>().GetOrientation();
                switch (orientation)
                {
                    case DeviceOrientation.Undefined:
                        this.IsPresented = false; //true;
                        break;
                    case DeviceOrientation.Landscape:
                        this.IsPresented = true; //true;
                        break;
                    case DeviceOrientation.Portrait:
                        this.IsPresented = false; //true;
                        break;
                }
            }
            else{
                this.IsPresented = false; //true;
            }
        }


        public InspectionMaster(string selectedInspection)
        {
            NavigationPage.SetHasNavigationBar(this, false);
 
            var inspectionDetailCell = new DataTemplate(typeof(InspectionDetailCell));
            ListView assessmentListView = new ListView
            {
                ItemsSource = GetLeftMenuItemsList(),
                ItemTemplate = inspectionDetailCell,
                BackgroundColor = Color.FromHex("#F8F9F9")
            };

            assessmentListView.SeparatorVisibility = SeparatorVisibility.None;

            IsGestureEnabled = false;
            this.WidthRequest = 200;

            this.Master = new ContentPage
            {
                Title = "Inspection",
                Icon = "Hamburger_icon_25.png",
                WidthRequest = 200,

                Content = new StackLayout
                {
                    Margin = new Thickness(0, 0, 0, 0),
                    Padding = 0,
                    Children =
                    {
                        new BoxView(){
                            Color = Color.FromHex("#025085"),
                            HeightRequest = 64.2
                        },
                        assessmentListView
                    }
                }
            };

            // Define a selected handler for the ListView.
            assessmentListView.ItemSelected += (sender, args) =>
            {
                LeftMenuItem selectedLeftMenuItem = (LeftMenuItem)args.SelectedItem;
                
                IsGestureEnabled = false;
                if (selectedLeftMenuItem.DisplayName.Equals("Submit"))
                {
                    this.Detail = new NavigationPage(new Signature())
                    {
                        BarBackgroundColor = Color.FromHex("#025085"),
                        BarTextColor = Color.White
                    };
                }
                else if(selectedLeftMenuItem.DisplayName.Equals("Review"))
                {
                    this.Detail = new NavigationPage(new InspectionReview())
                    {
                        BarBackgroundColor = Color.FromHex("#025085"),
                        BarTextColor = Color.White
                    };
                }
                else if(selectedLeftMenuItem.DisplayName.Equals(""))
                {
                    //empty
                }
                else
                {
                    this.Detail = new NavigationPage(new InspectionDetail(AppDataWallet.SelectedAssessmentMetadata.Sections.FirstOrDefault<Sections>(X => X.SectionDisplayName ==  selectedLeftMenuItem.DisplayName)))
                    {
                        BarBackgroundColor = Color.FromHex("#025085"),
                        BarTextColor = Color.White
                    };

                }
                // Set the BindingContext of the detail page.
                this.Detail.BindingContext = args.SelectedItem;
                // Show the detail page.
                this.IsPresented = false;
                //SetMasterPresentationOnOrientation();

            };

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
            statusIcon.Margin = new Thickness(2, 0, 2, 0);

            Label lblSectionName = new Label();
            lblSectionName.SetBinding(Label.TextProperty, "DisplayName");
            lblSectionName.Margin = new Thickness(2, 0, 2, 0);

            StackLayout leftMenuItemLayout = new StackLayout();
            leftMenuItemLayout.Orientation = StackOrientation.Horizontal;
            leftMenuItemLayout.Padding = new Thickness(10, 10, 5, 10);

            leftMenuItemLayout.Children.Add(statusIcon);
            leftMenuItemLayout.Children.Add(lblSectionName);

            leftMenuItemLayout.SetBinding(Layout.BackgroundColorProperty, "#3693FF");
            cellWrapper.Children.Add(leftMenuItemLayout);



            View = cellWrapper;
        }
    }
}

