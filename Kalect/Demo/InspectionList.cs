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
using DataCollection.Services;
using DataCollection.Entities;

namespace Kalect.Demo
{
    public class InspectionList : ContentPage
    {
        async void I2List_Clicked(object sender, EventArgs e)
        {
            ShowBusy();
            AssessmentService assessmentService = new AssessmentService();
            List<AssessmentMetadataEntity> assessments = await assessmentService.GetListOfAllAssignedAssessmentsFromServer("I2");

            inspectionList.ItemsSource = assessments;
            UpdateInspectionCountCircles(assessments);

            StopBusy();
        }


        async void I1List_Clicked(object sender, EventArgs e)
        {
            ShowBusy();
            AssessmentService assessmentService = new AssessmentService();
            List<AssessmentMetadataEntity> assessments = await assessmentService.GetListOfAllAssignedAssessmentsFromServer("I1");

            inspectionList.ItemsSource = assessments;
            UpdateInspectionCountCircles(assessments);

            StopBusy();
        }


        public void ShowBusy()
        {
            this.IsBusy = true;
            //activityIndicator.IsRunning = true;
            //activityIndicator.IsVisible = true;
            inspectionList.IsRefreshing = true;
        }

        public void StopBusy()
        {
            this.IsBusy = false;
            //activityIndicator.IsRunning = false;
            //activityIndicator.IsVisible = false;
            inspectionList.IsRefreshing = false;
        }

        private void HighlightButton(Button selectedButton)
        {
            newButton.BackgroundColor = Color.FromHex("#CBCBCB");
            inprogressButton.BackgroundColor = Color.FromHex("#CBCBCB");
            completedButton.BackgroundColor = Color.FromHex("#CBCBCB");

            if (selectedButton != null)
            {
                selectedButton.BackgroundColor = Color.FromHex("#C0BF07");
            }
        }

        async void CompletedButton_Clicked(object sender, EventArgs e)
        {
            HighlightButton(sender as Button);
            ShowBusy();
            List<AssessmentMetadataEntity> assessments = new List<AssessmentMetadataEntity>();
            assessments = await GetListOfAllAssignedAssessmentsFromDevice();
            var completeAssessment = assessments.FindAll(X => X.AssessmentStatusCode == 10);
            inspectionList.ItemsSource = completeAssessment;
            StopBusy();
        }


        async void NewButton_Clicked(object sender, EventArgs e)
        {
            HighlightButton(sender as Button);
            ShowBusy();
            inspectionList.IsRefreshing = true;
            List<AssessmentMetadataEntity> assessments = new List<AssessmentMetadataEntity>();
            assessments = await GetListOfAllAssignedAssessmentsFromDevice();
            var newAssessment = assessments.FindAll(X => X.AssessmentStatusCode == 8);
            inspectionList.ItemsSource = newAssessment;
            inspectionList.IsRefreshing = false;
            StopBusy();
        }


        async void InprogressButton_Clicked(object sender, EventArgs e)
        {
            HighlightButton(sender as Button);
            ShowBusy();
            List<AssessmentMetadataEntity> assessments = new List<AssessmentMetadataEntity>();
            assessments = await GetListOfAllAssignedAssessmentsFromDevice();
            var inProgressAssessment = assessments.FindAll(X => X.AssessmentStatusCode == 9);
            inspectionList.ItemsSource = inProgressAssessment;
            StopBusy();
        }


        void Connectivity_ConnectivityChanged(object sender, ConnectivityChangedEventArgs e)
        {
            if (CrossConnectivity.Current.IsConnected)
            {
                syncButton.IsEnabled = true;
                ShowBusy();
                this.OnAppearing();
                StopBusy();

            }
            else
            {
                syncButton.IsEnabled = false;
                ShowBusy();
                this.OnAppearing();
                StopBusy();
            }

        }


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
            ShowBusy();
            DependencyService.Get<IKalectDependencyServices>().DeleteAssessmentsFromDevice();

            List<AssessmentMetadataEntity> assessments = new List<AssessmentMetadataEntity>();

            inspectionList.ItemsSource = assessments;
            UpdateInspectionCountCircles(assessments);
            StopBusy();
        }


        async void leadList_Clicked(object sender, EventArgs e)
        {
            ShowBusy();
            AssessmentService assessmentService = new AssessmentService();
            List<AssessmentMetadataEntity> assessments = await assessmentService.GetListOfAllAssignedAssessmentsFromServer("lead");

            inspectionList.ItemsSource = assessments;
            UpdateInspectionCountCircles(assessments);

            StopBusy();
        }


        protected async override void OnAppearing()
        {
            base.OnAppearing();

            ShowBusy();
            if (isFirstLoad)
                isFirstLoad = false;
            else
            {
                AssessmentService assessmentService = new AssessmentService();
                List<AssessmentMetadataEntity> assessments = await GetListOfAllAssignedAssessmentsFromDevice();// assessmentService.GetListOfAllAssignedAssessmentsFromDevice();
                inspectionList.ItemsSource = assessments;
                UpdateInspectionCountCircles(assessments);

            }
            StopBusy();
        }



        async Task<List<AssessmentMetadataEntity>> GetListOfAllAssignedAssessmentsFromDevice()
        {
            AssessmentService assessmentService = new AssessmentService();
            List<AssessmentMetadataEntity> assessments = await assessmentService.GetListOfAllAssignedAssessmentsFromDevice();

            return assessments;
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
        public Button completedButton;
        Button syncButton;
        Button deleteList;
        Button leadList;
        Button I1List;
        Button I2List;
        bool isFirstLoad;

        public InspectionList()
        {
            isFirstLoad = true;
            this.BackgroundImageSource = "GrayBackground.png";

            Title = "Inspections";
            NavigationPage.SetHasNavigationBar(this, true);

            activityIndicator = new ActivityIndicator();
            activityIndicator.Color = Color.FromHex("#3693FF");
            activityIndicator.VerticalOptions = LayoutOptions.Center;
            activityIndicator.HorizontalOptions = LayoutOptions.Center;
            Padding = 5;
            AbsoluteLayout.SetLayoutFlags(activityIndicator, AbsoluteLayoutFlags.PositionProportional);
            AbsoluteLayout.SetLayoutBounds(activityIndicator, new Rectangle(0.5, 0.5, AbsoluteLayout.AutoSize, AbsoluteLayout.AutoSize));

            ToolbarItem toolbarItem = new ToolbarItem();
            toolbarItem.IconImageSource = "Contact.png";
            ToolbarItems.Add(toolbarItem);

            newButton = new Button();
            newButton.WidthRequest = 70;
            newButton.HeightRequest = 70;
            newButton.CornerRadius = 40;
            newButton.Text = "6";
            newButton.BackgroundColor = Color.FromHex("#C0BF07");
            newButton.HorizontalOptions = LayoutOptions.Start;
            //newButton.Margin = new Thickness(150, 0, 0, 0);
            newButton.FontSize = 40;
            newButton.TextColor = Color.White;
            newButton.Clicked += NewButton_Clicked;



            Label lblNew = new Label();
            lblNew.Text = "New";
            //lblNew.Margin = new Thickness(185, 0, 0, 0);

            inprogressButton = new Button();
            inprogressButton.WidthRequest = 70;
            inprogressButton.HeightRequest = 70;
            inprogressButton.CornerRadius = 40;
            inprogressButton.Text = "2";
            inprogressButton.BackgroundColor = Color.FromHex("#CBCBCB");
            inprogressButton.HorizontalOptions = LayoutOptions.CenterAndExpand;
            inprogressButton.FontSize = 40;
            inprogressButton.TextColor = Color.White;
            inprogressButton.Clicked += InprogressButton_Clicked;

            Label lblInprogress = new Label();
            lblInprogress.Text = "In Progress";
            lblInprogress.HorizontalOptions = LayoutOptions.CenterAndExpand;

            completedButton = new Button();
            completedButton.WidthRequest = 70;
            completedButton.HeightRequest = 70;
            completedButton.CornerRadius = 40;
            completedButton.Text = "12";
            completedButton.BackgroundColor = Color.FromHex("#CBCBCB"); // ("#e9e9e9");
            completedButton.HorizontalOptions = LayoutOptions.End;
            //completedButton.Margin = new Thickness(0, 0, 150, 0);
            completedButton.FontSize = 40;
            completedButton.TextColor = Color.White;
            completedButton.Clicked += CompletedButton_Clicked;

            Label lblCompleted = new Label();
            lblCompleted.Text = "Completed";
            //lblCompleted.Margin= new Thickness(0, 0, 150, 0);
            lblCompleted.HorizontalOptions = LayoutOptions.End;

            syncButton = new Button();
            // syncButton.WidthRequest = 100;
            // syncButton.HeightRequest = 40;
            syncButton.Text = "Download";
            syncButton.BorderColor = Color.FromHex("#CBCBCB");
            syncButton.BorderWidth = 1;
            syncButton.BackgroundColor = Color.White;
            syncButton.TextColor = Color.FromHex("#3693FF");
            //syncButton.Margin = new Thickness(25, 0, 0, 0);
            //syncButton.FontSize = 20;
            syncButton.HorizontalOptions = LayoutOptions.Start;
            syncButton.Clicked += SyncButton_Clicked;

            if (CrossConnectivity.Current.IsConnected)
            {
                syncButton.IsEnabled = true;
            }
            else
            {
                syncButton.IsEnabled = false;
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
            deleteList.FontSize = 12;
            deleteList.HorizontalOptions = LayoutOptions.Start;

            leadList = new Button();
            leadList.Clicked += leadList_Clicked;
            leadList.WidthRequest = 90;
            leadList.HeightRequest = 40;
            leadList.Text = "Pull";
            leadList.BorderColor = Color.FromHex("#CBCBCB");
            leadList.BorderWidth = 1;
            leadList.BackgroundColor = Color.White;
            leadList.TextColor = Color.FromHex("#3693FF");
            leadList.FontSize = 12;
            leadList.HorizontalOptions = LayoutOptions.Start;


            //I1List = new Button();
            //I1List.Clicked += I1List_Clicked;
            //I1List.WidthRequest = 65;deleteList            //I1List.HeightRequest = 40;
            //I1List.Text = "I1";
            //I1List.BorderColor = Color.FromHex("#CBCBCB");
            //I1List.BorderWidth = 1;
            //I1List.BackgroundColor = Color.White;
            //I1List.TextColor = Color.FromHex("#3693FF");
            //I1List.FontSize = 12;
            //I1List.HorizontalOptions = LayoutOptions.CenterAndExpand;

            //I2List = new Button();
            //I2List.Clicked += I2List_Clicked;
            //I2List.WidthRequest = 65;
            //I2List.HeightRequest = 40;
            //I2List.Text = "I2";
            //I2List.BorderColor = Color.FromHex("#CBCBCB");
            //I2List.BorderWidth = 1;
            //I2List.BackgroundColor = Color.White;
            //I2List.TextColor = Color.FromHex("#3693FF");
            //I2List.FontSize = 12;
            //I2List.HorizontalOptions = LayoutOptions.End;


            inspectionList = new ListView();
            inspectionList.HeightRequest = 700;
            inspectionList.SeparatorColor = Color.FromHex("#CBCBCB");
            Content = new ScrollView
            {
                Content = new StackLayout
                {   //BackgroundColor = Color.FromHex("#F8F9F9"),
                    Orientation = StackOrientation.Vertical,
                    Children = {

                    new StackLayout{
                        HeightRequest = 40,
                       //BackgroundColor = Color.FromHex("#F8F9F9"),
                       HorizontalOptions=LayoutOptions.CenterAndExpand,
                        Children=
                        {
                            new StackLayout
                            {
                               // Padding= new Thickness(6,0,0,0),
                                Orientation = StackOrientation.Horizontal,
                                HorizontalOptions = LayoutOptions.CenterAndExpand,
                                Children=
                                {
                                    new StackLayout
                                    {
                                        Orientation = StackOrientation.Vertical,
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
                                        HorizontalOptions = LayoutOptions.CenterAndExpand,
                                       // Padding = new Thickness(25,0,25,0),
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
                                        HorizontalOptions = LayoutOptions.End,
                                        //Padding = new Thickness(25,0,0,0),//
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
                    activityIndicator,
                    new StackLayout{
                         Orientation = StackOrientation.Vertical,
                         FlowDirection =  FlowDirection.LeftToRight,
                       // HeightRequest = 500,
                       //BackgroundColor = Color.FromHex("#F8F9F9"),
                       // Padding = new Thickness(20,0,20,0),
                       // Margin = 0,
                        Padding = new Thickness(8,0,8,0),
                        Children =
                        {
                           new StackLayout
                            {
                               //BackgroundColor = Color.White,
                                Orientation = StackOrientation.Horizontal,
                                Padding= new Thickness(0,0,0,0),//Left Align
                              // HorizontalOptions=LayoutOptions.CenterAndExpand,
                                Children=
                                {
                                    //syncButton,
                                   deleteList,
                                    leadList,
                                   // I1List,
                                   // I2List
                                }
                            },
                            new StackLayout
                            {
                                 BackgroundColor = Color.FromHex("e9e9e8"),
                                //BackgroundColor = Color.FromHex("#CBCBCB"),
                                Orientation = StackOrientation.Horizontal,
                                 Padding= new Thickness(0,0,0,0),
                               // HorizontalOptions=LayoutOptions.CenterAndExpand,
                               // Padding = 1,
                               // Margin = 0,
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


            //AssessmentService assessmentService = new AssessmentService();
            //List<AssessmentMetadataEntity> assessments = GetListOfAllAssignedAssessmentsFromDevice().Wait(); //assessmentService.GetListOfAllAssignedAssessmentsFromDevice();

            var customAssessmentCell = new DataTemplate(typeof(CustomInspectionCell));
            if (DeviceProperty.IsPhone())
            {
                //change temppate to phone
                customAssessmentCell = new DataTemplate(typeof(CustomInspectionCellPhone));
            }

            ShowBusy();
            BindList();
            //Bind forms
            //inspectionList.ItemsSource = assessments;
            inspectionList.ItemTemplate = customAssessmentCell;
            //inspectionList.ItemSelected += InspectionList_ItemSelected;
            //inspectionList.HeightRequest = 1000;
            inspectionList.RowHeight = 100;
            inspectionList.SelectionMode = ListViewSelectionMode.Single;
            //inspectionList.SeparatorColor = Color.Gray;
            inspectionList.HasUnevenRows = false;
            inspectionList.ItemTapped += InspectionList_ItemTapped;
            inspectionList.SeparatorVisibility = SeparatorVisibility.None;
            inspectionList.HasUnevenRows = true;
            StopBusy();
            //UpdateInspectionCountCircles(assessments);

            //ContextTest().Wait();
            Connectivity.ConnectivityChanged += Connectivity_ConnectivityChanged;

        }

        async void SyncButton_Clicked(object sender, EventArgs e)
        {
            ShowBusy();
            List<AssessmentMetadataEntity> assessments = await GetListOfAllAssignedAssessmentsFromDevice();
            FormService formService = new FormService();

            foreach (AssessmentMetadataEntity assessment in assessments)
            {
                List<FormInstance> formInstances = formService.GetAllForms(assessment.AssessmentTrackingNumber.ToString());

                foreach (Sections section in assessment.Sections)
                {
                    FormInstance formInstance = new FormInstance();
                    formInstance = formInstances.Find(x => x.FriendlyName == section.SectionFriendlyName);

                    await formService.SyncFormData(new Guid(assessment.AssessmentId), formInstance.FormData);
                }
                await formService.SyncMediaToOneDrive(assessment.AssessmentTrackingNumber.ToString());

                // If the assessment status is Complete, sync new status to server and remove from device
                if (assessment.AssessmentStatusCode == 10)
                {
                    AssessmentService assessmentService = new AssessmentService();
                    assessmentService.CompleteMobileAssessmentTask(new Guid(assessment.AssessmentId),
                                                                   assessment.AssessmentTrackingNumber);
                    DependencyService.Get<IKalectDependencyServices>().DeleteAssessmentFromDevice(assessment.AssessmentTrackingNumber);
                    ((InspectionList)this.Parent.Parent.Parent.Parent.Parent).BindList();
                }
            }
            BindList();
            StopBusy();
        }

        public async void BindList()
        {
            List<AssessmentMetadataEntity> assessments = await GetListOfAllAssignedAssessmentsFromDevice();
            inspectionList.ItemsSource = assessments;
            UpdateInspectionCountCircles(assessments);
        }

        private void UpdateInspectionCountCircles(List<AssessmentMetadataEntity> assessments)
        {
            newButton.Text = assessments.FindAll(X => X.AssessmentStatusCode == 8).Count.ToString();
            inprogressButton.Text = assessments.FindAll(X => X.AssessmentStatusCode == 9).Count.ToString();
            completedButton.Text = assessments.FindAll(X => X.AssessmentStatusCode == 10).Count.ToString();
        }

    }


    public class CustomInspectionCell : ViewCell
    {
        async void SyncAction_Clicked(object sender, EventArgs e)
        {
            InspectionList inspectionList = this.Parent.Parent.Parent.Parent.Parent as InspectionList;

            if (inspectionList != null)
            {
                inspectionList.ShowBusy();
                //((ListView)this.Parent).IsRefreshing = true;
            }

            var menuItem = (MenuItem)sender;
            var selectedAssessment = (AssessmentMetadataEntity)menuItem.CommandParameter;

            FormService formService = new FormService();
            List<FormInstance> formInstances = formService.GetAllForms(selectedAssessment.AssessmentTrackingNumber.ToString());

            foreach (Sections section in selectedAssessment.Sections)
            {
                FormInstance formInstance = new FormInstance();
                formInstance = formInstances.Find(x => x.FriendlyName == section.SectionFriendlyName);

                await formService.SyncFormData(new Guid(selectedAssessment.AssessmentId), formInstance.FormData);
            }
            await formService.SyncMediaToOneDrive(selectedAssessment.AssessmentTrackingNumber.ToString());

            // If the assessment status is Complete, sync new status to server and remove from device
            if (selectedAssessment.AssessmentStatusCode == 10)
            {
                AssessmentService assessmentService = new AssessmentService();
                assessmentService.CompleteMobileAssessmentTask(new Guid(selectedAssessment.AssessmentId),
                                                               selectedAssessment.AssessmentTrackingNumber);
                DependencyService.Get<IKalectDependencyServices>().DeleteAssessmentFromDevice(selectedAssessment.AssessmentTrackingNumber);
                if (int.TryParse(inspectionList.completedButton.Text, out int completedCount) && inspectionList != null)
                {
                    inspectionList.completedButton.Text = (--completedCount).ToString();
                }
            }

            if (inspectionList != null)
            {
                inspectionList.BindList();
                inspectionList.StopBusy();
                //((ListView)this.Parent).IsRefreshing = false;
            }

        }

        async void History_Clicked(object sender, EventArgs e)
        {
            //((Page)this.Parent.Parent.Parent.Parent.Parent.Parent).IsBusy = true;
            ((Page)this.Parent.Parent.Parent.Parent.Parent).IsBusy = true;
            //((ListView)this.Parent).IsRefreshing = true;

            var menuItem = (MenuItem)sender;
            var selectedAssessment = (AssessmentMetadataEntity)menuItem.CommandParameter;

            await ((Page)this.Parent.Parent.Parent.Parent.Parent).Navigation.PushAsync(new InspectionHistory(selectedAssessment));
        }
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

        public CustomInspectionCell()
        {
           /* var syncAction = new MenuItem { IsDestructive = true, IconImageSource = "sync.png" };
            syncAction.SetBinding(MenuItem.CommandParameterProperty, new Binding("."));

            syncAction.SetBinding(MenuItem.IconImageSourceProperty,  "sync.png");

            if (CrossConnectivity.Current.IsConnected)
            {
                syncAction.Text = "   Sync   ";
                syncAction.Clicked += SyncAction_Clicked;
            }
            else
            {
                syncAction.Text = "   Offline   ";
            }
     
            ContextActions.Add(syncAction);


            var historyAction = new MenuItem { IsDestructive = false };
            historyAction.SetBinding(MenuItem.CommandParameterProperty, new Binding("."));
            historyAction.Text = "   Recent Assessment   ";
            historyAction.Clicked += History_Clicked;
            ContextActions.Add(historyAction);*/

            StackLayout rowWrapper = new StackLayout();
            rowWrapper.Orientation = StackOrientation.Horizontal;
            rowWrapper.HeightRequest = 150;

            StackLayout rowImageLayout = new StackLayout();
            rowImageLayout.VerticalOptions = LayoutOptions.Center;
            rowImageLayout.Padding = new Thickness(25, 0, 15, 0);
            Image rowImage = new Image();
            rowImage.SetBinding(Image.SourceProperty, "AssessmentCategoriesIcon");         
            rowImage.WidthRequest = 70;
            rowImage.HeightRequest = 70;
            rowImageLayout.Children.Add(rowImage);
            rowWrapper.Children.Add(rowImageLayout);

            StackLayout mainContent = new StackLayout();
            mainContent.Orientation = StackOrientation.Vertical;
            mainContent.VerticalOptions = LayoutOptions.Center;
            mainContent.WidthRequest = 500;
        
            Label inspectiontype = new Label();
         

            inspectiontype.SetBinding(Label.TextProperty, "AssessmentTrackingNumber");
          

            Label orgName = new Label();
            orgName.SetBinding(Label.TextProperty, "OrganizationName");       
            Label orgAddress = new Label();        
            orgAddress.SetBinding(Label.TextProperty, "OrganizationAddress");
            orgAddress.TextColor = Color.FromHex("#B0B0B0");
            Label updateTimeAgo = new Label();
            updateTimeAgo.SetBinding(Label.TextProperty, "LastUpdatedDateFormatted");
            updateTimeAgo.TextColor = Color.Green;
            mainContent.Children.Add(inspectiontype);
            mainContent.Children.Add(orgName);
            mainContent.Children.Add(orgAddress);
            mainContent.Children.Add(updateTimeAgo);
            rowWrapper.Children.Add(mainContent);



            StackLayout weatherLayout = new StackLayout();
            weatherLayout.Orientation = StackOrientation.Vertical;
            weatherLayout.VerticalOptions = LayoutOptions.Center;
            weatherLayout.Margin = new Thickness(25, 0, 0, 0);
           
          

            Image weatherImage = new Image();
            weatherImage.SetBinding(Image.SourceProperty, "WeatherIcon");
            weatherImage.WidthRequest = 50;
            weatherImage.HeightRequest = 50;
            weatherLayout.Children.Add(weatherImage);
            rowWrapper.Children.Add(weatherLayout);

            StackLayout mapLayout = new StackLayout();
            mapLayout.Orientation = StackOrientation.Vertical;
            mapLayout.VerticalOptions = LayoutOptions.Center;
            mapLayout.Margin = new Thickness(50, 0, 25, 0);

            Button locationArrowButton = new Button();
            locationArrowButton.ImageSource = "location-arrow.png";
            locationArrowButton.SetBinding(Button.CommandParameterProperty, "MapUrl");
            locationArrowButton.Clicked += LocationArrowButton_Clicked;
            locationArrowButton.HeightRequest = 50;
            locationArrowButton.WidthRequest = 50;

            mapLayout.Children.Add(locationArrowButton);
            rowWrapper.Children.Add(mapLayout);


      


            StackLayout cellVerticalLayout = new StackLayout();
            cellVerticalLayout.Orientation = StackOrientation.Vertical;

            BoxView lineSeprator = new BoxView();
            lineSeprator.HeightRequest = 5;
            lineSeprator.BackgroundColor = Color.FromHex("#ECF0F1");

            cellVerticalLayout.Children.Add(rowWrapper);
            cellVerticalLayout.Children.Add(lineSeprator);

            View = cellVerticalLayout; //rowWrapper;// horizontalLayout;//cellWrapper;
        }






    }
}

