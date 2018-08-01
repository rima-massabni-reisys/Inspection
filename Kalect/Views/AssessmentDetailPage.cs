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
            DependencyService.Get<ISaveAndLoad>().SaveText(AppManager.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), friendlyName, formData);

            if (messages.Count == 0)
            {
                var answer = DisplayAlert("Saved with No Errors", "Form Saved Succesfully", "OK");
            }
            else
            {
                var answer = DisplayAlert("Saved With Errors (" + messages.Count + ")", "Please check the Error messages for more details.", "OK");
            }
        }
        
        public AssessmentDetailPage()
        {
            Title = AppManager.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString();
            Content = new StackLayout
            {
                Children = {
                    new Label { Text = AppManager.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString() }
                }
            };

        }
        string friendlyName;
        string validationSchema;
        Label lblError;
        public AssessmentDetailPage(string selectedItem)
        {
            Title = AppManager.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString();

            ToolbarItem saveToolbarItem = new ToolbarItem();
            saveToolbarItem.Text = "Save";
            saveToolbarItem.Clicked += SaveToolbarItem_Clicked;
            ToolbarItems.Add(saveToolbarItem);
             
            lblError = new Label();
            lblError.TextColor = Color.DarkRed;

            //Form Header Label
            Label formTitle = new Label();
            formTitle.Text = AppManager.SelectedAssessmentMetadata.Sections.FirstOrDefault(X => X.SectionFriendlyName == selectedItem).SectionDisplayName;
            formTitle.FontSize = 30;
            //formTitle.BackgroundColor = Color.FromRgb(52,152,219);

            friendlyName = selectedItem;
            FormDataService.FormData = string.Empty;

            FormService formService = new FormService();
            //Get Form Instance
            var formInstance = formService.GetFormInstance(AppManager.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), selectedItem);
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
}

