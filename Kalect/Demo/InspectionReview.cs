using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using DataCollection.Entities;
using DataCollection.Services;
using Kalect.Services.Entities;
using Xamarin.Forms;

namespace Kalect.Demo
{
    public class InspectionReview : ContentPage
    {
        async void ValidationList_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            /*AppDataWallet.SelectedAssessmentMetadata = (AssessmentMetadataEntity)((ListView)sender).SelectedItem;
            //var assessmenPage = new NavigationPage(new AssessmentMasterPage(((ListView)sender).SelectedItem.ToString()));
            //await Navigation.PushAsync(new NavigationPage(new InspectionMaster(((ListView)sender).SelectedItem.ToString())), false);
            await Navigation.PushAsync(new InspectionMaster(((ListView)sender).SelectedItem.ToString()), false);
            ((ListView)sender).SelectedItem = null;*/

            Validations validations = (Validations)((ListView)sender).SelectedItem;
            Sections sections = new Sections();
            sections.SectionFriendlyName = validations.FriendlyName;
            sections.SectionDisplayName = validations.FriendlyName;

            await Navigation.PushAsync(new InspectionDetail(sections),false);
            //{
                //BarBackgroundColor = Color.FromHex("#025085"),
                //BarTextColor = Color.White
            //};
            ((ListView)sender).SelectedItem = null;
        }


        public InspectionReview()
        {
            //Form Header Label
            Label formTitle = new Label();             formTitle.Text = "Review";             formTitle.FontSize = 30;             formTitle.Margin = new Thickness(0, 0, 0, 15);             formTitle.TextColor = Color.FromHex("#B0B0B0");              ListView validationList = new ListView();             validationList.IsGroupingEnabled = true;
            validationList.GroupHeaderTemplate = new DataTemplate(typeof(CustomReviewGroupCell)); 
            var template = new DataTemplate(typeof(TextCell));
            template.SetBinding(TextCell.TextProperty, "ErrorMessage");

            validationList.ItemTemplate = template;
            validationList.ItemsSource = RunValidations(); 
            validationList.HasUnevenRows = false;
            validationList.ItemTapped += ValidationList_ItemTapped;;

            Content = new StackLayout
            {
                Padding = new Thickness(25, 25, 25, 0),
                Children = {
                    formTitle,
                    validationList
                }
            };
        }


        List<Group> RunValidations() //List<ValidationEntity>         {             RuleService ruleService = new RuleService();              List<ValidationEntity> validations = ruleService.Validate(AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString()); 
            List<Group> groups = new List<Group>();

            foreach (ValidationEntity ve in validations)
            {
                Group formGroup = new Group(ve.FriendlyName, ve.Messages.Count);


                foreach(string errorMessage in ve.Messages)
                {
                    Validations error = new Validations();
                    error.ErrorMessage = errorMessage;
                    error.FriendlyName = formGroup.FriendlyName;

                    formGroup.Add(error);
                }

                groups.Add(formGroup);
            }
           return groups;         } 
    }

    public class CustomReviewGroupCell : ViewCell
    {
        public CustomReviewGroupCell()
        {
            StackLayout rowLayout = new StackLayout();
            rowLayout.Orientation = StackOrientation.Horizontal;

            Label lblFriendlyName = new Label();
            lblFriendlyName.SetBinding(Label.TextProperty, "FriendlyName");
            lblFriendlyName.HorizontalOptions = LayoutOptions.StartAndExpand;
            lblFriendlyName.VerticalOptions = LayoutOptions.Center;
            lblFriendlyName.Margin = new Thickness(10, 0, 0, 0);


            Button btnErrorCount = new Button();
            btnErrorCount.WidthRequest = 20;
            btnErrorCount.HeightRequest = 20;
            btnErrorCount.CornerRadius = 10;
            btnErrorCount.SetBinding(Button.TextProperty, "ErrorCount");
            btnErrorCount.SetBinding(Button.BackgroundColorProperty, "ErrorColor");
            btnErrorCount.TextColor = Color.White;
 
            //Label lblErrorCount = new Label();
            //lblErrorCount.SetBinding(Label.TextProperty, "ErrorCount");
            btnErrorCount.HorizontalOptions = LayoutOptions.EndAndExpand;
            btnErrorCount.VerticalOptions = LayoutOptions.Center;
            btnErrorCount.Margin = new Thickness(0, 0, 10, 0);


            rowLayout.Children.Add(lblFriendlyName);
            rowLayout.Children.Add(btnErrorCount);

            View = rowLayout;
        }
    }

    class Validations
    {
        public string ErrorMessage
        {
            get;
            set;
        }
        public string FriendlyName
        {
            get;set;
        }
        public string DisplayName
        {
            get;set;
        }

        /*public string Address
        {
            get;
            set;
        }*/
    }

    class Group : ObservableCollection<Validations>
    {
        public Group(string friendlyName, int errorCount)
        {
            FriendlyName = friendlyName;
            ErrorCount = errorCount;

            if (ErrorCount == 0)
            {
                ErrorColor = Color.Green;
            }
            else
            {
                ErrorColor = Color.Red;
            }
        }

        public int ErrorCount
        {
            get;
            private set;
        }

        public string FriendlyName
        {
            get;
            private set;
        }


        public Color ErrorColor
        {
            get;
            private set;
        }
    }
}

