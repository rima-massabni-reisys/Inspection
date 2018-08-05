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
        
        /*void deleteList_Clicked(object sender, EventArgs e)
        {
            DependencyService.Get<IKalectDependencyServices>().DeleteAssessmentsFromDevice();
        }*/


        void ListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            AppDataWallet.SelectedAssessmentMetadata = (AssessmentMetadataEntity)e.SelectedItem;
            //var assessmenPage = new NavigationPage(new AssessmentMasterPage(args.SelectedItem.ToString()));
            Navigation.PushAsync(new AssessmentMasterPage(e.SelectedItem.ToString()), false);
        }


        void RefreshList_Clicked(object sender, EventArgs e)
        {
            //IAssessmentManager assessmentManager = new AssessmentManager();
            //List<AssessmentMetadataEntity> assessments = assessmentManager.GetListOfAllAssignedAssessmentsFromServer();
            AssessmentService assessmentService = new AssessmentService();
            List<AssessmentMetadataEntity> assessments = assessmentService.GetListOfAllAssignedAssessmentsFromServer();

            listView.ItemsSource = assessments;
        }

        ListView listView;
        public AvailableAssessmentList()
        {
            this.Title = "Assessments";

            //IAssessmentManager assessmentManager = new AssessmentManager();
            //List<AssessmentMetadataEntity> assessments = assessmentManager.GetListOfAllAssignedAssessmentsFromDevice();
            AssessmentService assessmentService = new AssessmentService();
            List<AssessmentMetadataEntity> assessments = assessmentService.GetListOfAllAssignedAssessmentsFromDevice();

            var customAssessmentCell = new DataTemplate(typeof(CustomAssessmentCell));
           
            //Bind forms
            listView = new ListView
            {
                ItemsSource = assessments,
                ItemTemplate = customAssessmentCell
            };

            listView.ItemSelected += ListView_ItemSelected;


            Button refreshList = new Button();
            refreshList.Text = "Get Latest Assignments";
            refreshList.Clicked += RefreshList_Clicked;


            /*Button deleteList = new Button();
            deleteList.Text = "deleteList";
            deleteList.Clicked += deleteList_Clicked;*/

            Content = new StackLayout
            {
                Padding=10,
                Children = {
                    //deleteList,
                    refreshList,
                    listView 
                }
            };
        }
    }


    public class CustomAssessmentCell : ViewCell
    {
        public CustomAssessmentCell()
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

