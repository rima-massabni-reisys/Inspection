using System;
using System.Collections.Generic;
using DataCollection.Entities;
using DataCollection.Services;
using Kalect.Services;
using Kalect.Services.Entities;
using Kalect.Services.Interfaces;
using Plugin.Connectivity;
using Xamarin.Forms;

namespace Kalect.Demo
{
    public class CustomInspectionCellPhone : ViewCell
    {

        async void SyncAction_Clicked(object sender, EventArgs e)
        {
            //((Page)this.Parent.Parent.Parent.Parent.Parent.Parent).IsBusy = true;
            InspectionList inspectionList = this.Parent.Parent.Parent.Parent.Parent as InspectionList;

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

            //((Page)this.Parent.Parent.Parent.Parent.Parent.Parent).IsBusy = false;
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

        async void History_Clicked(object sender, EventArgs e)
        {
            //((Page)this.Parent.Parent.Parent.Parent.Parent.Parent).IsBusy = true;
            ((Page)this.Parent.Parent.Parent.Parent.Parent).IsBusy = true;
            //((ListView)this.Parent).IsRefreshing = true;

            var menuItem = (MenuItem)sender;
            var selectedAssessment = (AssessmentMetadataEntity)menuItem.CommandParameter;

            await ((Page)this.Parent.Parent.Parent.Parent.Parent).Navigation.PushAsync(new InspectionHistory(selectedAssessment));
        }

        public CustomInspectionCellPhone()
        {
            var syncAction = new MenuItem {IsDestructive = true, Icon = "sync.png"  };
            syncAction.SetBinding(MenuItem.CommandParameterProperty, new Binding("."));

            syncAction.SetBinding(MenuItem.IconProperty, "sync.png");

            if (CrossConnectivity.Current.IsConnected) 
            {
                syncAction.Text = "Push";  
                syncAction.Clicked += SyncAction_Clicked;
            } else {
                syncAction.Text = "Push Not Available";
            }

            var historyAction = new MenuItem { IsDestructive = false };
            historyAction.SetBinding(MenuItem.CommandParameterProperty, new Binding("."));
            historyAction.Text = "   Recent Assessment   ";
            historyAction.Clicked += History_Clicked;
           

            var lastUpdatedAction = new MenuItem { Text = "Last Updated", IsDestructive = false, Icon = "sync.png" };
            lastUpdatedAction.SetBinding(MenuItem.TextProperty, "LastUpdatedDateFormatted");

            ContextActions.Add(lastUpdatedAction);
            ContextActions.Add(syncAction);
             ContextActions.Add(historyAction);

            StackLayout rowWrapper = new StackLayout();
            rowWrapper.Orientation = StackOrientation.Horizontal;
            //rowWrapper.HorizontalOptions = LayoutOptions.CenterAndExpand;
            //rowWrapper.VerticalOptions = LayoutOptions.CenterAndExpand;
            rowWrapper.HeightRequest = 150;
            //rowWrapper.Padding = new Thickness(5, 0, 5, 0);

            StackLayout rowImageLayout = new StackLayout();
            rowImageLayout.VerticalOptions = LayoutOptions.Center;
            rowImageLayout.Padding = new Thickness(5, 0, 5, 0);
            Image rowImage = new Image();
            rowImage.SetBinding(Image.SourceProperty, "AssessmentCategoriesIcon");
            //rowImage.Source = "Farm.png";
            rowImage.WidthRequest = 70;
            rowImage.HeightRequest = 70;
            rowImageLayout.Children.Add(rowImage);
            rowWrapper.Children.Add(rowImageLayout);

            StackLayout mainContent = new StackLayout();
            mainContent.Orientation = StackOrientation.Vertical;
            mainContent.VerticalOptions = LayoutOptions.Center;
            //mainContent.WidthRequest = 250;
            //mainContent.Padding = new Thickness(0, 0, 25, 0);

            Label inspectiontype = new Label();
            //inspectiontype.Text = "Inspection 1200001";
            inspectiontype.SetBinding(Label.TextProperty, "AssessmentTrackingNumber");
            //inspectiontype.FontAttributes = FontAttributes.Bold;

            Label orgName = new Label();
            orgName.SetBinding(Label.TextProperty, "OrganizationName");
            orgName.FontSize = 12;

            /*StackLayout orgaddresslocLayout = new StackLayout();
            orgaddresslocLayout.Orientation = StackOrientation.Horizontal;
            orgaddresslocLayout.Padding = new Thickness(0, 0, 0, 0);*/

            Label orgAddress = new Label();
            orgAddress.FontSize = 10;
            orgAddress.SetBinding(Label.TextProperty, "OrganizationAddress");
            orgAddress.TextColor = Color.FromHex("#B0B0B0");


            mainContent.Children.Add(inspectiontype);
            mainContent.Children.Add(orgName);
            mainContent.Children.Add(orgAddress);
            rowWrapper.Children.Add(mainContent);


            /*StackLayout progressLayout = new StackLayout();
            progressLayout.Orientation = StackOrientation.Vertical;
            progressLayout.VerticalOptions = LayoutOptions.Center;
            progressLayout.Margin = new Thickness(25, 0, 0, 0);
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

            rowWrapper.Children.Add(progressLayout);*/

            StackLayout phoneLayout = new StackLayout();
            phoneLayout.Orientation = StackOrientation.Vertical;
            phoneLayout.VerticalOptions = LayoutOptions.Center;
            phoneLayout.Padding = new Thickness(10, 0, 5, 0);
            //phoneLayout.WidthRequest = 50;

            Button phoneButton = new Button();
            phoneButton.Image = "phone.png";
            //phoneButton.SetBinding(Button.CommandParameterProperty, "MapUrl");
            phoneButton.Clicked += phoneButton_Clicked;

            phoneLayout.Children.Add(phoneButton);

            //only add phone icon for phone

            rowWrapper.Children.Add(phoneLayout);


            StackLayout weatherMapLayout = new StackLayout();
            weatherMapLayout.Orientation = StackOrientation.Vertical;
            weatherMapLayout.VerticalOptions = LayoutOptions.Center;
            weatherMapLayout.Padding = new Thickness(5, 0, 5, 0);

            StackLayout weatherLayout = new StackLayout();
            weatherLayout.Orientation = StackOrientation.Vertical;
            weatherLayout.VerticalOptions = LayoutOptions.Center;
            //weatherLayout.Margin = new Thickness(5, 0, 0, 0);
            //weatherLayout.WidthRequest = 50;

            //Label lblWeather = new Label();
            //lblWeather.SetBinding(Label.TextProperty, "Weather");
            Image weatherImage = new Image();
            weatherImage.SetBinding(Image.SourceProperty, "WeatherIcon");
            //weatherImage.HeightRequest = 20;
            //weatherImage.WidthRequest = 20;

            weatherLayout.Children.Add(weatherImage);

            StackLayout mapLayout = new StackLayout();
            mapLayout.Orientation = StackOrientation.Vertical;
            mapLayout.VerticalOptions = LayoutOptions.Center;
            //mapLayout.Margin = new Thickness(5, 0, 0, 0);

            Button locationArrowButton = new Button();
            locationArrowButton.Image = "location-arrow.png";
            locationArrowButton.SetBinding(Button.CommandParameterProperty, "MapUrl");
            locationArrowButton.Clicked += LocationArrowButton_Clicked;
            //locationArrowButton.HeightRequest = 15;
            //locationArrowButton.WidthRequest = 15;


            mapLayout.Children.Add(locationArrowButton);

            weatherMapLayout.Children.Add(weatherLayout);
            weatherMapLayout.Children.Add(mapLayout);

            rowWrapper.Children.Add(weatherMapLayout);



            //View = rowWrapper;

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
