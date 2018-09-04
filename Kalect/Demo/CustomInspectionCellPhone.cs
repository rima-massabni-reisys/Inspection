using System;
using Xamarin.Forms;

namespace Kalect.Demo
{
    public class CustomInspectionCellPhone : ViewCell
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

        public CustomInspectionCellPhone()
        {
            var syncAction = new MenuItem { Text = "Sync", IsDestructive = true, Icon = "sync.png" };

            var lastUpdatedAction = new MenuItem { Text = "Last Updated", IsDestructive = false, Icon = "sync.png" };

            ContextActions.Add(lastUpdatedAction);
            ContextActions.Add(syncAction);

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
            rowImage.Source = "Farm.png";
            rowImageLayout.Children.Add(rowImage);
            rowWrapper.Children.Add(rowImageLayout);

            StackLayout mainContent = new StackLayout();
            mainContent.Orientation = StackOrientation.Vertical;
            mainContent.VerticalOptions = LayoutOptions.Center;
            //mainContent.WidthRequest = 250;
            //mainContent.Padding = new Thickness(0, 0, 25, 0);

            Label inspectiontype = new Label();
            inspectiontype.Text = "Egg Inspection";
            inspectiontype.FontAttributes = FontAttributes.Bold;
            inspectiontype.FontSize = 12;

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



                



            //rowWrapper.Children.Add(mapLayout);

            View = rowWrapper;// horizontalLayout;//cellWrapper;
        }
    }

}
