using System;
using System.Collections.Generic;
using Kalect.Services;
using Kalect.Views;
using Kalect.Services.Entities;
using Kalect.Services.Interfaces;
using Xamarin.Forms;
using System.Linq;
using Plugin.Connectivity;
using Xamarin.Essentials;
using System.Threading.Tasks;
using Kalect.IntegrationServices;
using Microsoft.Extensions.DependencyInjection;

namespace Kalect.Demo
{
    public class InspectionList : ContentPage
    {
        async void InspectionList_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            AppDataWallet.SelectedAssessmentMetadata = (AssessmentMetadataEntity)((ListView)sender).SelectedItem;
            //var assessmenPage = new NavigationPage(new AssessmentMasterPage(((ListView)sender).SelectedItem.ToString()));
            //await Navigation.PushAsync(new NavigationPage(new InspectionMaster(((ListView)sender).SelectedItem.ToString())), false);
            await Navigation.PushAsync(new InspectionMaster(((ListView)sender).SelectedItem.ToString()), false);
            ((ListView)sender).SelectedItem = null;
        }


        void DeleteList_Clicked(object sender, EventArgs e)
        {
            activityIndicator.IsRunning = true;
            DependencyService.Get<IKalectDependencyServices>().DeleteAssessmentsFromDevice();

            List<AssessmentMetadataEntity> assessments = new List<AssessmentMetadataEntity>();

            inspectionList.ItemsSource = assessments;
            activityIndicator.IsRunning = false;
        }


        async void RefreshList_Clicked(object sender, EventArgs e)
        {
            //activityIndicator.IsRunning = true;
            this.IsBusy = true;
            AssessmentService assessmentService = new AssessmentService();
            List<AssessmentMetadataEntity> assessments = await assessmentService.GetListOfAllAssignedAssessmentsFromServer();

            inspectionList.ItemsSource = assessments;
            this.IsBusy = false;
            //activityIndicator.IsRunning = false;
        }


        /*async void InspectionList_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            AppDataWallet.SelectedAssessmentMetadata = (AssessmentMetadataEntity)e.SelectedItem;
            //var assessmenPage = new NavigationPage(new AssessmentMasterPage(args.SelectedItem.ToString()));
            await Navigation.PushAsync(new InspectionMaster(e.SelectedItem.ToString()), false);

        }*/


        ActivityIndicator activityIndicator;
        ListView inspectionList;
        Button newButton;
        Button inprogressButton;
        Button completedButton;
        Button syncButton;
        Button deleteList;
        Button refreshList;

        public InspectionList()
        {
            Title = "Inspections";
            NavigationPage.SetHasNavigationBar(this, true);

            activityIndicator = new ActivityIndicator();
            activityIndicator.Color = Color.FromHex("#3693FF");
            activityIndicator.VerticalOptions = LayoutOptions.Center;
            activityIndicator.HorizontalOptions = LayoutOptions.Center;

            ToolbarItem toolbarItem = new ToolbarItem();
            toolbarItem.Icon = "Contact.png";
            ToolbarItems.Add(toolbarItem);

            newButton = new Button();
            newButton.WidthRequest = 100;
            newButton.HeightRequest = 100;
            newButton.CornerRadius = 50;
            newButton.Text = "6";
            newButton.BackgroundColor = Color.FromHex("#C0BF07");
            newButton.HorizontalOptions = LayoutOptions.Start;
            //newButton.Margin = new Thickness(150, 0, 0, 0);
            newButton.FontSize = 50;
            newButton.TextColor = Color.White;


            Label lblNew = new Label();
            lblNew.Text = "New";
            //lblNew.Margin = new Thickness(185, 0, 0, 0);

            inprogressButton = new Button();
            inprogressButton.WidthRequest = 100;
            inprogressButton.HeightRequest = 100;
            inprogressButton.CornerRadius = 50;
            inprogressButton.Text = "2";
            inprogressButton.BackgroundColor = Color.FromHex("#CBCBCB");
            inprogressButton.HorizontalOptions = LayoutOptions.CenterAndExpand;
            inprogressButton.FontSize = 50;
            inprogressButton.TextColor = Color.White;

            Label lblInprogress = new Label();
            lblInprogress.Text = "In Progress";
            lblInprogress.HorizontalOptions = LayoutOptions.CenterAndExpand;
                
            completedButton = new Button();
            completedButton.WidthRequest = 100;
            completedButton.HeightRequest = 100;
            completedButton.CornerRadius = 50;
            completedButton.Text = "12";
            completedButton.BackgroundColor = Color.FromHex("#CBCBCB");
            completedButton.HorizontalOptions = LayoutOptions.End;
            //completedButton.Margin = new Thickness(0, 0, 150, 0);
            completedButton.FontSize = 50;
            completedButton.TextColor = Color.White;

            Label lblCompleted = new Label();
            lblCompleted.Text = "Completed";
            //lblCompleted.Margin= new Thickness(0, 0, 150, 0);
            lblCompleted.HorizontalOptions = LayoutOptions.End;

            syncButton = new Button();
            syncButton.WidthRequest = 100;
            syncButton.HeightRequest = 40;
            syncButton.Text = "Sync All";
            syncButton.BorderColor = Color.FromHex("#CBCBCB");
            syncButton.BorderWidth = 1;
            syncButton.BackgroundColor = Color.White;
            syncButton.TextColor = Color.FromHex("#3693FF");
            //syncButton.Margin = new Thickness(25, 0, 0, 0);
            //syncButton.FontSize = 20;
            syncButton.HorizontalOptions = LayoutOptions.Start;

            if (CrossConnectivity.Current.IsConnected) 
            {
                syncButton.IsVisible = true;  
            } else {
                syncButton.IsVisible = false;
            }  

            deleteList = new Button();
            deleteList.Clicked += DeleteList_Clicked;
            deleteList.WidthRequest = 100;
            deleteList.HeightRequest = 40;
            deleteList.Text = "Delete All";
            deleteList.BorderColor = Color.FromHex("#CBCBCB");
            deleteList.BorderWidth = 1;
            deleteList.BackgroundColor = Color.White;
            deleteList.TextColor = Color.FromHex("#3693FF");
            //deleteList.Padding = new Thickness(25, 0, 0, 0);
            //syncButton.FontSize = 20;
            //deleteList.HorizontalOptions = LayoutOptions.Start;

            refreshList = new Button();
            refreshList.Clicked += RefreshList_Clicked;
            refreshList.WidthRequest = 100;
            refreshList.HeightRequest = 40;
            refreshList.Text = "Get All";
            refreshList.BorderColor = Color.FromHex("#CBCBCB");
            refreshList.BorderWidth = 1;
            refreshList.BackgroundColor = Color.White;
            refreshList.TextColor = Color.FromHex("#3693FF");
            //refreshList.Padding = new Thickness(25, 0, 0, 0);


            inspectionList = new ListView();
            Content = new StackLayout
            {   BackgroundColor = Color.FromHex("#F8F9F9"),
                //Padding = 10,
                Orientation = StackOrientation.Vertical,
                Children = {
                    new StackLayout{
                        HeightRequest = 175,
                        BackgroundColor = Color.FromHex("#F8F9F9"),
                        Children=
                        {
                            new StackLayout
                            {
                                Padding=new Thickness(25,25,25,25),
                                Orientation = StackOrientation.Horizontal,
                                HorizontalOptions = LayoutOptions.CenterAndExpand,
                                Children=
                                {
                                    new StackLayout
                                    {
                                        Padding = new Thickness(0,0,25,0),//
                                            
                                        Orientation = StackOrientation.Vertical,
                                        //HorizontalOptions = LayoutOptions.Start,
                                        Children=
                                        {
                                            newButton,
                                            new StackLayout
                                            {
                                                VerticalOptions= LayoutOptions.Center,
                                                HorizontalOptions = LayoutOptions.Center,
                                                Children = {
                                                    lblNew
                                                }
                                            }

                                        }
                                    },
                                    new StackLayout
                                    {
                                        Orientation = StackOrientation.Vertical,
                                        //HorizontalOptions = LayoutOptions.CenterAndExpand,
                                        Padding = new Thickness(25,0,25,0),
                                        Children =
                                        {
                                            inprogressButton,
                                            new StackLayout
                                            {
                                                VerticalOptions = LayoutOptions.Center,
                                                HorizontalOptions = LayoutOptions.Center,
                                                Children =
                                                {
                                                    lblInprogress
                                                }
                                            }

                                        }
                                    },
                                    new StackLayout
                                    {
                                        Orientation = StackOrientation.Vertical,
                                        //HorizontalOptions = LayoutOptions.End,
                                        Padding = new Thickness(25,0,0,0),//
                                        Children =
                                        {
                                            completedButton,
                                            new StackLayout
                                            {
                                                VerticalOptions = LayoutOptions.Center,
                                                HorizontalOptions = LayoutOptions.Center,
                                                Children =
                                                {
                                                    lblCompleted
                                                }
                                            }

                                        }
                                    }

                                }
                            }
                        }
                    },
                    new StackLayout{
                        BackgroundColor = Color.FromHex("#F8F9F9"),
                        Padding = new Thickness(15,0,15,0),
                        Margin = 0,
                        Children =
                        {
                            new StackLayout
                            {
                                //BackgroundColor = Color.White,
                                Orientation = StackOrientation.Horizontal,
                                Children=
                                {
                                    syncButton,
                                    deleteList,
                                    refreshList,

                                }
                            },
                            new StackLayout
                            {
                                Margin = 0,
                                Children=
                                {
                                    inspectionList
                                }
                            }
                        }
                    }

                }
            };


            AssessmentService assessmentService = new AssessmentService();
            List<AssessmentMetadataEntity> assessments = assessmentService.GetListOfAllAssignedAssessmentsFromDevice();
            var customAssessmentCell = new DataTemplate(typeof(CustomInspectionCell));

            //Bind forms
            inspectionList.ItemsSource = assessments;
            inspectionList.ItemTemplate = customAssessmentCell;
            //inspectionList.ItemSelected += InspectionList_ItemSelected;
            inspectionList.HeightRequest = 1000;
            inspectionList.RowHeight = 125;
            inspectionList.SelectionMode = ListViewSelectionMode.Single;
            inspectionList.SeparatorColor = Color.Gray;
            inspectionList.HasUnevenRows = false;
            inspectionList.ItemTapped += InspectionList_ItemTapped;


            UpdateInspectionCountCircles(assessments);

            //ContextTest().Wait();

        }

        private void UpdateInspectionCountCircles(List<AssessmentMetadataEntity> assessments)
        {
            newButton.Text = assessments.FindAll(X => X.AssessmentStatusCode == 1).Count.ToString();
            inprogressButton.Text = assessments.FindAll(X => X.AssessmentStatusCode == 2).Count.ToString();
            completedButton.Text = assessments.FindAll(X => X.AssessmentStatusCode == 3).Count.ToString();
        }

    }

    public class CustomInspectionCell : ViewCell
    {
        void phoneButton_Clicked(object sender, EventArgs e)
        {
            Xamarin.Forms.Button btn = (Button)sender;
            //var url = (string)btn.CommandParameter;
            //url = url.Replace(' ', '+');
            Device.OpenUri(new Uri("tel: 1234567890"));
        }


        void LocationArrowButton_Clicked(object sender, EventArgs e)
        {
            Xamarin.Forms.Button btn = (Button)sender;
            var url = (string)btn.CommandParameter;
            url = url.Replace(' ', '+');
            Device.OpenUri(new Uri(url));

        }

        bool IsPhone()
        {
            var idiom = DeviceInfo.Idiom;
            if(idiom.ToLower().Equals("phone"))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public CustomInspectionCell()
        {
            var syncAction = new MenuItem { Text = "Sync", IsDestructive = false, Icon = "sync.png"  };

            var lastUpdatedAction = new MenuItem { Text = "Last Updated", IsDestructive = false, Icon = "sync.png" };

            ContextActions.Add(lastUpdatedAction);
            ContextActions.Add(syncAction);

            StackLayout rowWrapper = new StackLayout();
            rowWrapper.Orientation = StackOrientation.Horizontal;
            //rowWrapper.HorizontalOptions = LayoutOptions.CenterAndExpand;
            //rowWrapper.VerticalOptions = LayoutOptions.CenterAndExpand;
            rowWrapper.HeightRequest = 150;

            StackLayout rowImageLayout = new StackLayout();
            rowImageLayout.VerticalOptions = LayoutOptions.Center;
            rowImageLayout.Padding = new Thickness(25, 0, 15, 0);
            Image rowImage = new Image();
            rowImage.Source = "Farm.png";  
            rowImageLayout.Children.Add(rowImage);
            rowWrapper.Children.Add(rowImageLayout);

            StackLayout mainContent = new StackLayout();
            mainContent.Orientation = StackOrientation.Vertical;
            mainContent.VerticalOptions = LayoutOptions.Center;
            mainContent.WidthRequest = 250;
            //mainContent.Padding = new Thickness(0, 0, 25, 0);

            Label inspectiontype = new Label();
            inspectiontype.Text = "Egg Inspection";
            inspectiontype.FontAttributes = FontAttributes.Bold;

            Label orgName = new Label();
            orgName.SetBinding(Label.TextProperty, "OrganizationName");
            orgName.FontSize = 15;

            Label orgAddress = new Label();
            orgAddress.FontSize = 15;
            orgAddress.SetBinding(Label.TextProperty, "OrganizationAddress");
            orgAddress.TextColor = Color.FromHex("#B0B0B0");


            mainContent.Children.Add(inspectiontype);
            mainContent.Children.Add(orgName);
            mainContent.Children.Add(orgAddress);
            rowWrapper.Children.Add(mainContent);


            StackLayout progressLayout = new StackLayout();
            progressLayout.Orientation = StackOrientation.Vertical;
            progressLayout.VerticalOptions = LayoutOptions.Center;
            progressLayout.Margin = new Thickness(25, 0 , 0, 0);
            progressLayout.WidthRequest = 100;

            Label labelPercentage = new Label();
            labelPercentage.Text = "0" + "%";
            labelPercentage.FontSize = 15;

            ProgressBar progressBar = new ProgressBar();
            progressBar.ProgressTo(0.4, 5, Easing.Linear);
            progressBar.WidthRequest = 15;
            //progressBar.HeightRequest = 50;



            Label assessmentStatus = new Label();
            assessmentStatus.SetBinding(Label.TextProperty, "AssessmentStatus");
            assessmentStatus.TextColor = Color.FromHex("#B0B0B0");
            assessmentStatus.FontSize = 15;
            progressLayout.Children.Add(labelPercentage);
            progressLayout.Children.Add(progressBar);
            progressLayout.Children.Add(assessmentStatus);

            rowWrapper.Children.Add(progressLayout);

            StackLayout weatherLayout = new StackLayout();
            weatherLayout.Orientation = StackOrientation.Vertical;
            weatherLayout.VerticalOptions = LayoutOptions.Center;
            weatherLayout.Margin = new Thickness(25, 0, 0, 0);
            weatherLayout.WidthRequest = 50;

            //Label lblWeather = new Label();
            //lblWeather.SetBinding(Label.TextProperty, "Weather");
            Image weatherImage = new Image();
            weatherImage.SetBinding(Image.SourceProperty, "WeatherIcon");

            weatherLayout.Children.Add(weatherImage);
            rowWrapper.Children.Add(weatherLayout);

            StackLayout phoneLayout = new StackLayout();
            phoneLayout.Orientation = StackOrientation.Vertical;
            phoneLayout.VerticalOptions = LayoutOptions.Center;
            phoneLayout.Margin = new Thickness(25, 0, 0, 0);
            phoneLayout.WidthRequest = 50;

            Button phoneButton = new Button();
            phoneButton.Image = "phone.png";
            //phoneButton.SetBinding(Button.CommandParameterProperty, "MapUrl");
            phoneButton.Clicked += phoneButton_Clicked;

            phoneLayout.Children.Add(phoneButton);

            //only add phone icon for phone
            if (IsPhone())
            {
                rowWrapper.Children.Add(phoneLayout);
            }

            StackLayout mapLayout = new StackLayout();
            mapLayout.Orientation = StackOrientation.Vertical;
            mapLayout.VerticalOptions = LayoutOptions.Center;
            mapLayout.Margin = new Thickness(25, 0, 0, 0);
            Button locationArrowButton = new Button();
            locationArrowButton.Image = "location-arrow.png";
            locationArrowButton.SetBinding(Button.CommandParameterProperty, "MapUrl");
            locationArrowButton.Clicked += LocationArrowButton_Clicked;
                               
            mapLayout.Children.Add(locationArrowButton);
            rowWrapper.Children.Add(mapLayout);

            View = rowWrapper;// horizontalLayout;//cellWrapper;
        }
    }
}

