using System;
using DataCollection.DependencyServices;
using DataCollection.Services;
using Newtonsoft.Json.Linq;
using Xamarin.Forms;
using Newtonsoft.Json;
using Newtonsoft.Json.Schema;
using System.Collections.Generic;
using System.Linq;

namespace Kalect.Views
{
    //this is the page that will get the dynamic form JSON to bind and create components*/
    public class AssessmentDetailPage : ContentPage
    {
        void SaveToolbarItem_Clicked(object sender, EventArgs e)
        {
            SaveAction();
        }

        private void SaveAction()
        {
            //Read formData
            string formData = FormDataService.FormData;

            //Validate
            JObject fd = JObject.Parse(formData);
            IList<string> messages;
            JSchema schema = JSchema.Parse(validationSchema);
            bool valid = fd.IsValid(schema, out messages);

            //Show Error
            lblError.Text = string.Join(",", messages.ToArray()); ;

            //Save
            DependencyService.Get<ISaveAndLoad>().SaveText(AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), friendlyName, formData);

            if (messages.Count == 0)
            {
                var answer = DisplayAlert("Saved with No Errors", "Form Saved Succesfully", "OK");
            }
            else
            {
                var answer = DisplayAlert("Saved With Errors (" + messages.Count + ")", "Please check the Error messages for more details.", "OK");
            }
        }

        ListView sectionList;
        public AssessmentDetailPage()
        {
            Title = AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString();

            Label sectionListHeader = new Label();
            sectionListHeader.Text = "Sections";
            sectionListHeader.HorizontalTextAlignment = TextAlignment.Center;
            sectionListHeader.FontSize = 30;

            //List<string> sections = (from Sections in AppManager.SelectedAssessmentMetadata.Sections
            //                               select Sections.SectionDisplayName).ToList<string>();
            var customSectionCell = new DataTemplate(typeof(CustomSectionCell));

            sectionList = new ListView();
            sectionList.ItemsSource = AppDataWallet.SelectedAssessmentMetadata.Sections; //sections;
            sectionList.ItemTemplate = customSectionCell;

            Content = new StackLayout
            {
                Children = {
                    sectionListHeader,
                    sectionList
                }
            };

        }
        string friendlyName;
        string validationSchema;
        Label lblError;
        public AssessmentDetailPage(string selectedItem)
        {
            Title = AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString();

            ToolbarItem saveToolbarItem = new ToolbarItem();
            saveToolbarItem.Text = "Save";
            saveToolbarItem.Clicked += SaveToolbarItem_Clicked;
            ToolbarItems.Add(saveToolbarItem);
             
            lblError = new Label();
            lblError.TextColor = Color.DarkRed;

            //Form Header Label
            Label formTitle = new Label();
            formTitle.Text = AppDataWallet.SelectedAssessmentMetadata.Sections.FirstOrDefault(X => X.SectionFriendlyName == selectedItem).SectionDisplayName;
            formTitle.FontSize = 30;
            //formTitle.BackgroundColor = Color.FromRgb(52,152,219);

            friendlyName = selectedItem;
            FormDataService.FormData = string.Empty;

            FormService formService = new FormService();
            //Get Form Instance
            var formInstance = formService.GetFormInstance(AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), selectedItem);
            validationSchema = formInstance.ValidationSchema;
            //generate Layout Dynamically

            //Set static FormData
            FormDataService.FormData = formInstance.FormData;;
            Layout formModelLayout = formService.GenerateLayout(formInstance.FormModelView, formInstance.FormData);

            Content = new ScrollView
            {
                Content = new StackLayout
                {
                    Children = {
                        lblError,
                        formTitle,
                        formModelLayout

                }
                }
            };
        }

    }

    public class CustomSectionCell : ViewCell
    {
        public CustomSectionCell()
        {
            //instantiate each of our views
            StackLayout horizontalLayout = new StackLayout();
            Label sectionDisplayName = new Label();
            Label sectionStatus = new Label();
            sectionStatus.FontSize = 10;

            //set bindings
            sectionDisplayName.SetBinding(Label.TextProperty, "SectionDisplayName");
            sectionStatus.SetBinding(Label.TextProperty, "SectionStatus");

            //Set properties for desired design
            horizontalLayout.Orientation = StackOrientation.Horizontal;
            sectionStatus.HorizontalOptions = LayoutOptions.EndAndExpand;

            //add views to the view hierarchy
            horizontalLayout.Children.Add(sectionDisplayName);
            horizontalLayout.Children.Add(sectionStatus);
            View = horizontalLayout;
        }
    }
}

