using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using DataCollection.Entities;
using DataCollection.Services;
using Xamarin.Forms;

namespace Kalect.Demo
{
    public class InspectionReview : ContentPage
    {
        public InspectionReview()
        {
            //Form Header Label
            Label formTitle = new Label();             formTitle.Text = "Review";             formTitle.FontSize = 30;             formTitle.Margin = new Thickness(0, 0, 0, 15);             formTitle.TextColor = Color.FromHex("#B0B0B0");              ListView validationList = new ListView();             validationList.IsGroupingEnabled = true;
            //validationList.GroupDisplayBinding = new Binding("FriendlyName");

            /*var groupTemplate = new DataTemplate(typeof(TextCell));
            groupTemplate.SetBinding(TextCell.TextProperty, "FriendlyName");
            groupTemplate.SetBinding(TextCell.DetailProperty, "ErrorCount");*/

            validationList.GroupHeaderTemplate = new DataTemplate(typeof(CustomReviewGroupCell));//groupTemplate; 
            var template = new DataTemplate(typeof(TextCell));
            template.SetBinding(TextCell.TextProperty, "ErrorMessage");

            validationList.ItemTemplate = template;
            validationList.ItemsSource = RunValidations(); //GetPeople();
            validationList.HasUnevenRows = false;

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
                    Validations person = new Validations();
                    person.ErrorMessage = errorMessage;

                    formGroup.Add(person);
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


            Label lblErrorCount = new Label();
            lblErrorCount.SetBinding(Label.TextProperty, "ErrorCount");
            lblErrorCount.HorizontalOptions = LayoutOptions.EndAndExpand;
            lblErrorCount.VerticalOptions = LayoutOptions.Center;
            lblErrorCount.Margin = new Thickness(0, 0, 10, 0);


            rowLayout.Children.Add(lblFriendlyName);
            rowLayout.Children.Add(lblErrorCount);

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
    }
}

