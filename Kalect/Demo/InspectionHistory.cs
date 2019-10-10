using System;
using Xamarin.Forms;
using Plugin.Connectivity;
using Xamarin.Essentials;
using Kalect.Services.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;
using Kalect.Services;

namespace Kalect.Demo
{
    public class InspectionHistory : ContentPage
    {
        ListView inspectionList;
        string parentTrackingNo;
        private void ShowBusy()
        {
            this.IsBusy = true;
            inspectionList.IsRefreshing = true;
        }

        private void StopBusy()
        {
            this.IsBusy = false;
            inspectionList.IsRefreshing = false;
        }

        async Task<List<AssessmentHistory>> GetListOfAssessmentsHistoryFromDevice(long TrackingNumber)
        {
            AssessmentService assessmentService = new AssessmentService();
            List<AssessmentHistory> assessments = await assessmentService.GetListOfAssessmentsHistoryFromDevice(TrackingNumber);

            return assessments;
        }

        async void InspectionList_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            this.IsBusy = true;
            AppDataWallet.SelectedAssessmentHistory = (AssessmentHistory)((ListView)sender).SelectedItem;
            //var assessmenPage = new NavigationPage(new AssessmentMasterPage(((ListView)sender).SelectedItem.ToString()));
            //await Navigation.PushAsync(new NavigationPage(new InspectionMaster(((ListView)sender).SelectedItem.ToString())), false);
            //await Navigation.PushAsync(new InspectionMaster(((ListView)sender).SelectedItem.ToString()), false);


            await Navigation.PushAsync(new InspectionHistoryReview(parentTrackingNo));
            this.IsBusy = false;
            //((ListView)sender).SelectedItem = null;
        }

        public InspectionHistory(AssessmentMetadataEntity entity)
        {

            this.BackgroundImageSource = "GrayBackground.png";

            Title = "Assessment History";
            parentTrackingNo = entity.AssessmentTrackingNumber.ToString();
            inspectionList = new ListView();

            Label orgName = new Label();
            orgName.Text = entity.OrganizationName;
            orgName.TextColor = Color.White;
            orgName.FontSize = 22;
            orgName.FontAttributes = FontAttributes.Bold;

            Image rowImage = new Image();
            rowImage.Source = entity.AssessmentCategoriesIcon;
            //rowImage.Source = "Farm.png";
            rowImage.WidthRequest = 50;
            rowImage.HeightRequest = 50;

            Label address = new Label();
            address.Text = entity.OrganizationAddress;

            Label numofHistory = new Label();
            numofHistory.Text = "Number of Assessment (" + entity.AssessmentHistory.Length + ")";


            Content = new ScrollView
            {
                Content = new StackLayout
                {   //BackgroundColor = Color.FromHex("#F8F9F9"),
                    Orientation = StackOrientation.Vertical,
                    Children = {
                        new StackLayout{
                        BackgroundColor = Color.FromHex("#025085"),
                        Padding= new Thickness(25,7,25,0),
                       // HeightRequest = 70,
                        //Padding= new Thickness(25,25,25,0),
                        Orientation = StackOrientation.Horizontal,
                        //HorizontalOptions=LayoutOptions.CenterAndExpand,
                        Children=
                        {
                            rowImage,
                            new StackLayout{
                                Padding = new Thickness(20,6,0,0),
                                Children = {
                                    orgName
                                }
                            }
                        }
                    },
                    new StackLayout{
                        //HeightRequest = 175,
                        Padding= new Thickness(10,10,10,0),
                        Orientation = StackOrientation.Horizontal,
                        //HorizontalOptions=LayoutOptions.CenterAndExpand,
                        Children=
                        {
                            //orgName,
                            numofHistory
                        }
                    },
                    new StackLayout{
                        //HeightRequest = 175,
                       // Padding = new Thickness(10,10,10,0),
                        HorizontalOptions=LayoutOptions.CenterAndExpand,
                        Children=
                        {
                            new StackLayout
                           {
                                BackgroundColor = Color.FromHex("#CBCBCB"),
                                Padding = 1,
                                Margin = 0,
                                Children=
                                {
                                    inspectionList
                                }
                            }
                        }
                    }
                }
                }
            };

            var customAssessmentCell = new DataTemplate(typeof(CustomInspectionHistoryCell));
            //if (DeviceProperty.IsPhone())
            //{
            //    //change temppate to phone
            //    customAssessmentCell = new DataTemplate(typeof(CustomInspectionCellPhone));
            //}

            ShowBusy();
            BindList(entity.AssessmentTrackingNumber);
            //Bind forms
            //inspectionList.ItemsSource = assessments;
            inspectionList.ItemTemplate = customAssessmentCell;
            //inspectionList.ItemSelected += InspectionList_ItemSelected;
            //inspectionList.HeightRequest = 1000;
            // inspectionList.RowHeight = 90;
            inspectionList.SelectionMode = ListViewSelectionMode.Single;
            //inspectionList.SeparatorColor = Color.Gray;
            inspectionList.HasUnevenRows = false;
            inspectionList.ItemTapped += InspectionList_ItemTapped;
            inspectionList.SeparatorVisibility = SeparatorVisibility.None;
            StopBusy();
            //UpdateInspectionCountCircles(assessments);

            //ContextTest().Wait();
            //Connectivity.ConnectivityChanged += Connectivity_ConnectivityChanged;
        }

        private async void BindList(long TrackingNumber)
        {
            var assessments = await GetListOfAssessmentsHistoryFromDevice(TrackingNumber);
            inspectionList.ItemsSource = assessments;
        }
    }

    public class CustomInspectionHistoryCell : ViewCell
    {
        public CustomInspectionHistoryCell()
        {


            StackLayout rowWrapper = new StackLayout();
            rowWrapper.Orientation = StackOrientation.Horizontal;
            rowWrapper.HorizontalOptions = LayoutOptions.StartAndExpand;
            rowWrapper.Padding = new Thickness(1, 1, 1, 1);
            //rowWrapper.HeightRequest = 50;


            //Image rowImage = new Image();
            //rowImage.SetBinding(Image.SourceProperty, "AssessmentCategoriesIcon");
            ////rowImage.Source = "Farm.png";
            //rowImage.WidthRequest = 70;
            //rowImage.HeightRequest = 70;

            //rowWrapper.Children.Add(rowImage);



            //StackLayout mainContent = new StackLayout();
            //mainContent.Orientation = StackOrientation.Vertical;
            //mainContent.Padding = new Thickness(10, 10, 0, 0);

            StackLayout dateContent = new StackLayout();
            dateContent.Orientation = StackOrientation.Horizontal;


            Label dotlabel = new Label();
            dotlabel.Text = "Prepared by Michael John";
            dotlabel.Margin = new Thickness(5, 0, 0, 0);
            dotlabel.FontSize = 12;
            //dotlabel.FontAttributes = FontAttributes.Bold;

            Label assessmentTrackingNumber = new Label();
            assessmentTrackingNumber.SetBinding(Label.TextProperty, "AssessmentTrackingNumber");
            assessmentTrackingNumber.Margin = new Thickness(5, 0, 0, 0);
            assessmentTrackingNumber.FontSize = 12;



            Label assessStartDate = new Label();

            assessStartDate.SetBinding(Label.TextProperty, "AssessmentStartDate");
            assessStartDate.Margin = new Thickness(5, 0, 0, 0);
            assessStartDate.FontSize = 12;

            Label dashed = new Label();
            dashed.Text = " - ";


            Label assessEndDate = new Label();

            assessEndDate.SetBinding(Label.TextProperty, "AssessmentEndDate");
            assessStartDate.Margin = new Thickness(5, 0, 0, 0);
            assessEndDate.FontSize = 12;
            //orgAddress.TextColor = Color.FromHex("#B0B0B0");


            rowWrapper.Children.Add(assessmentTrackingNumber);
            dateContent.Children.Add(assessStartDate);
            dateContent.Children.Add(dashed);
            dateContent.Children.Add(assessEndDate);
            rowWrapper.Children.Add(dateContent);
            rowWrapper.Children.Add(dotlabel);

            StackLayout cellVerticalLayout = new StackLayout();
            cellVerticalLayout.Orientation = StackOrientation.Vertical;

            BoxView lineSeprator = new BoxView();
            lineSeprator.HeightRequest = 2;
            lineSeprator.BackgroundColor = Color.FromHex("#ECF0F1");
            lineSeprator.HorizontalOptions = LayoutOptions.FillAndExpand;
            lineSeprator.Margin = new Thickness(0, 10, 0, 0);

            cellVerticalLayout.Children.Add(rowWrapper);
            cellVerticalLayout.Children.Add(lineSeprator);

            View = cellVerticalLayout; //rowWrapper;// horizontalLayout;//cellWrapper;

        }
    }
}