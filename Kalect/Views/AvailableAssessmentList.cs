using System;
using System.Collections.Generic;
using Kalect.Services;
using Kalect.Services.Entities;
using Kalect.Services.Interfaces;
using Xamarin.Forms;
using System.Linq;

namespace Kalect.Views
{
    public class AvailableAssessmentList : ContentPage
    {
        void ListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            AppManager.SelectedAssessmentMetadata = (AssessmentMetadataEntity)e.SelectedItem;
            //var assessmenPage = new NavigationPage(new AssessmentMasterPage(args.SelectedItem.ToString()));
            Navigation.PushAsync(new AssessmentMasterPage(e.SelectedItem.ToString()), false);
        }


        void RefreshList_Clicked(object sender, EventArgs e)
        {
            IAssessmentManager assessmentManager = new AssessmentManager();
            List<AssessmentMetadataEntity> assessments = assessmentManager.GetListOfAllAssignedAssessmentsFromServer();

            listView.ItemsSource = assessments;
        }

        ListView listView;
        public AvailableAssessmentList()
        {
            this.Title = "Assessments";

            IAssessmentManager assessmentManager = new AssessmentManager();
            List<AssessmentMetadataEntity> assessments = assessmentManager.GetListOfAllAssignedAssessmentsFromDevice();


            var customCell = new DataTemplate(typeof(CustomCell));
           
            //Bind forms
            listView = new ListView
            {
                ItemsSource = assessments,
                ItemTemplate = customCell
            };

            listView.ItemSelected += ListView_ItemSelected;


            Button refreshList = new Button();
            refreshList.Text = "Get Latest Assignments";
            refreshList.Clicked += RefreshList_Clicked;

            Content = new StackLayout
            {
                Padding=10,
                Children = {
                    refreshList,
                    listView 
                }
            };
        }
    }


    public class CustomCell : ViewCell
    {
        public CustomCell()
        {
            //instantiate each of our views
            //var image = new Image();
            StackLayout cellWrapper = new StackLayout();
            StackLayout horizontalLayout = new StackLayout();
            Label orgName = new Label();
            Label trackingNo = new Label();
            trackingNo.FontSize = 10;
            trackingNo.TextColor = Color.Gray;
            Label status = new Label();
            status.Text = "Not Started";
            status.FontSize = 10;
            status.TextColor = Color.Gray;

            //set bindings
            trackingNo.SetBinding(Label.TextProperty, "AssessmentTrackingNumber");
            orgName.SetBinding(Label.TextProperty, "OrganizationName");
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
        }
    }

}

