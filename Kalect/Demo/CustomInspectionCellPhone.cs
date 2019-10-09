using System;
using System.Collections.Generic;
using DataCollection.Entities;
using DataCollection.Services;
using Kalect.Services.Entities;
using Plugin.Connectivity;
using Xamarin.Forms;

namespace Kalect.Demo
{
    public class CustomInspectionCellPhone : ViewCell
    {
        async void SyncAction_Clicked(object sender, EventArgs e)
        {
            ((Page)this.Parent.Parent.Parent.Parent.Parent.Parent).IsBusy = true;

            var menuItem = (Button)sender;
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
            

            ((Page)this.Parent.Parent.Parent.Parent.Parent.Parent).IsBusy = false;
        }


        //void phoneButton_Clicked(object sender, EventArgs e)
        //{
        //    Xamarin.Forms.Button btn = (Button)sender;
        //    //var url = (string)btn.CommandParameter;
        //    //url = url.Replace(' ', '+');
        //    Device.OpenUri(new Uri("tel: 1234567890"));
        //}
        async void History_Clicked(object sender, EventArgs e)
        {
            //((Page)this.Parent.Parent.Parent.Parent.Parent.Parent).IsBusy = true;
            ((Page)this.Parent.Parent.Parent.Parent.Parent.Parent).IsBusy = true;
            //((ListView)this.Parent).IsRefreshing = true;

            var menuItem = (Button)sender;
            var selectedAssessment = (AssessmentMetadataEntity)menuItem.CommandParameter;

            await ((Page)this.Parent.Parent.Parent.Parent.Parent.Parent).Navigation.PushAsync(new InspectionHistory(selectedAssessment));
        }
       void LocationArrowButton_Clicked(object sender, EventArgs e)
        {
            Xamarin.Forms.Button btn = (Button)sender;
        var url = (string)btn.CommandParameter;
        url = url.Replace(' ', '+');
            Device.OpenUri(new Uri(url));

        }

    public CustomInspectionCellPhone()
        {
            //var syncAction = new MenuItem {IsDestructive = true, IconImageSource = "sync.png"  };
            //syncAction.SetBinding(MenuItem.CommandParameterProperty, new Binding("."));

            //syncAction.SetBinding(MenuItem.IconImageSourceProperty, "sync.png");

            //if (CrossConnectivity.Current.IsConnected) 
            //{
            //    syncAction.Text = "Upload";  
            //    syncAction.Clicked += SyncAction_Clicked;
            //} else {
            //    syncAction.Text = "Sync Not Available";
            //}  

            var lastUpdatedAction = new MenuItem { Text = "Last Updated", IsDestructive = false, IconImageSource = "sync.png" };
            lastUpdatedAction.SetBinding(MenuItem.TextProperty, "LastUpdatedDateFormatted");

           // ContextActions.Add(lastUpdatedAction);
           // ContextActions.Add(syncAction);

            var historyAction = new MenuItem { IsDestructive = false };
            historyAction.SetBinding(MenuItem.CommandParameterProperty, new Binding("."));
            historyAction.Text = "   Recent Assessment   ";
            historyAction.Clicked += History_Clicked;
            //  ContextActions.Add(historyAction);

            Button syncActionButton = new Button();
            //syncActionButton.ImageSource = "sync.png";
            syncActionButton.Text = "Push";
            syncActionButton.SetBinding(Button.CommandParameterProperty, new Binding("."));

            if (CrossConnectivity.Current.IsConnected)
            {
                syncActionButton.Text = "Push";
                syncActionButton.Clicked += SyncAction_Clicked;
            }
            else
            {
                syncActionButton.Text = "Sync Not Available";
            }



       

            syncActionButton.BackgroundColor = Color.Transparent;
            syncActionButton.HorizontalOptions = LayoutOptions.CenterAndExpand;
            syncActionButton.FontSize = 13;
            syncActionButton.TextColor = Color.FromHex("#3693FF");
            syncActionButton.BorderColor = Color.FromHex("#CBCBCB");
            syncActionButton.BorderWidth = 1;

            Button historyActionButton = new Button();  
            historyActionButton.FontSize = 13;
            historyActionButton.Text = "Recent Assessment";
            historyActionButton.SetBinding(Button.CommandParameterProperty, new Binding("."));       
            historyActionButton.Clicked += History_Clicked;
            historyActionButton.BackgroundColor = Color.Transparent;        
            historyActionButton.HorizontalOptions = LayoutOptions.CenterAndExpand;
            historyActionButton.TextColor = Color.FromHex("#3693FF");
            historyActionButton.BorderColor = Color.FromHex("#CBCBCB");
            historyActionButton.BorderWidth = 1;
            StackLayout rowWrapper = new StackLayout();
            rowWrapper.Orientation = StackOrientation.Horizontal;        
            rowWrapper.HeightRequest = 150;
        


            StackLayout rowImageLayout = new StackLayout();
            rowImageLayout.VerticalOptions = LayoutOptions.Center;
            rowImageLayout.Padding = new Thickness(5, 0, 5, 0);
            Image rowImage = new Image();
            rowImage.SetBinding(Image.SourceProperty, "AssessmentCategoriesIcon");
            //rowImage.Source = "Farm.png";
            rowImage.WidthRequest = 60;
            rowImage.HeightRequest = 60;
            rowImageLayout.Children.Add(rowImage);
            rowWrapper.Children.Add(rowImageLayout);

            StackLayout mainContent = new StackLayout();
            mainContent.Orientation = StackOrientation.Vertical;
            mainContent.VerticalOptions = LayoutOptions.Center;
          

            Label inspectiontype = new Label();
            //inspectiontype.Text = "Inspection 1200001";
            inspectiontype.SetBinding(Label.TextProperty, "AssessmentTrackingNumber");
         


            Label orgName = new Label();
            orgName.SetBinding(Label.TextProperty, "OrganizationName");
            orgName.FontSize = 12;

            /*StackLayout orgaddresslocLayout = new StackLayout();
            orgaddresslocLayout.Orientation = StackOrientation.Horizontal;
            orgaddresslocLayout.Padding = new Thickness(0, 0, 0, 0);*/

            Label orgAddress = new Label();
            orgAddress.FontSize = 10;
            orgAddress.SetBinding(Label.TextProperty, "OrganizationAddress");
           // orgAddress.WidthRequest = 10;
            //orgAddress.TextColor = Color.FromHex("#B0B0B0");

            orgAddress.TextColor = Color.FromHex("#9e9e9e");
            StackLayout actionLayout = new StackLayout
            {
                HorizontalOptions = LayoutOptions.Start,
                Orientation = StackOrientation.Horizontal,
                VerticalOptions = LayoutOptions.End,

                Children = {
                                   // inspectIcon,
                                    syncActionButton,
                                    historyActionButton
                                }


            };
                         

            mainContent.Children.Add(inspectiontype);
            mainContent.Children.Add(orgName);
            mainContent.Children.Add(orgAddress);
        //   mainContent.Children.Add(actionLayout);
            rowWrapper.Children.Add(mainContent);


          

            /*StackLayout phoneLayout = new StackLayout();
            phoneLayout.Orientation = StackOrientation.Horizontal;
            phoneLayout.HorizontalOptions = LayoutOptions.CenterAndExpand;
            phoneLayout.Padding = new Thickness(5, 0, 5, 0);
       

            Button phoneButton = new Button();
            phoneButton.ImageSource = "phone.png";
           
            phoneButton.Clicked += phoneButton_Clicked;

            phoneLayout.Children.Add(phoneButton);
            rowWrapper.Children.Add(phoneLayout);
            phoneButton.BackgroundColor = Color.Transparent;
            phoneButton.WidthRequest = 30;*/

            StackLayout weatherMapLayout = new StackLayout();
            weatherMapLayout.Orientation = StackOrientation.Horizontal;
            weatherMapLayout.HorizontalOptions = LayoutOptions.CenterAndExpand;
            weatherMapLayout.Padding = new Thickness(5, 0, 5, 0);
           
            StackLayout weatherLayout = new StackLayout();
            weatherLayout.Orientation = StackOrientation.Horizontal;
            weatherLayout.VerticalOptions = LayoutOptions.CenterAndExpand;
          

            Image weatherImage = new Image();
            weatherImage.SetBinding(Image.SourceProperty, "WeatherIcon");
          


            weatherLayout.Children.Add(weatherImage);

            Button locationArrowButton = new Button();
            locationArrowButton.ImageSource = "location_arrow.png";
            locationArrowButton.SetBinding(Button.CommandParameterProperty, "MapUrl");
            locationArrowButton.Clicked += LocationArrowButton_Clicked;
            locationArrowButton.BackgroundColor = Color.Transparent;
            locationArrowButton.WidthRequest= 30;

            weatherLayout.Children.Add(locationArrowButton);

      
            weatherMapLayout.Children.Add(weatherLayout);
        
            rowWrapper.Children.Add(weatherMapLayout);

         
          //  rowWrapper.Children.Add(actionLayout);
            View = rowWrapper;

            StackLayout cellVerticalLayout = new StackLayout();
            cellVerticalLayout.Orientation = StackOrientation.Vertical;

            BoxView lineSeprator = new BoxView();
            lineSeprator.HeightRequest = 3;
            lineSeprator.BackgroundColor = Color.FromHex("#ECF0F1");

            cellVerticalLayout.Children.Add(rowWrapper);
            cellVerticalLayout.Children.Add(actionLayout);
            cellVerticalLayout.Children.Add(lineSeprator);

            View = cellVerticalLayout; //rowWrapper;// horizontalLayout;//cellWrapper;
        }
    }

}
