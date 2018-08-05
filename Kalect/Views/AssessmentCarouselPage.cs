using System;
using System.Collections.Generic;
using DataCollection.DependencyServices;
using DataCollection.Services;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json.Schema;
using Xamarin.Forms;

namespace Kalect.Views
{
    public class AssessmentCarouselPage : CarouselPage
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
            //IList<string> messages;
            //JSchema schema = JSchema.Parse(_validationSchema);
            //bool valid = fd.IsValid(schema, out messages);

            //Show Error
            //lblError.Text = string.Join(",", messages.ToArray()); ;

            //Save
            //DependencyService.Get<ISaveAndLoad>().SaveText(AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), friendlyName, formData);
            DependencyService.Get<IDataCollectionDependencyService>().SaveFormData(formData, AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), _friendlyName, "FormData");

            //if (messages.Count == 0)
            //{
            //    var answer = DisplayAlert("Saved with No Errors", "Form Saved Succesfully", "OK");
            //}
            //else
            //{
            //    var answer = DisplayAlert("Saved With Errors (" + messages.Count + ")", "Please check the Error messages for more details.", "OK");
            //}
        }

        public AssessmentCarouselPage()
        {
            var defaultContentPage = new ContentPage
            {
                Content = new StackLayout
                {
                    Children = {
                    new Label { Text = "Hello ContentPage" }
                }
                }
            };
        }

        string _validationSchema;
        string _friendlyName;
        public AssessmentCarouselPage(string selectedItem)
        {
            _friendlyName = selectedItem;

            ToolbarItem saveToolbarItem = new ToolbarItem();
            saveToolbarItem.Text = "Save";
            saveToolbarItem.Clicked += SaveToolbarItem_Clicked;
            ToolbarItems.Add(saveToolbarItem);

            FormService formService = new FormService();

            //Get Form Instance
            var formInstance = formService.GetFormInstance(AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), selectedItem);
            _validationSchema = formInstance.ValidationSchema;
            //generate Layout Dynamically

            //Set static FormData
            FormDataService.FormData = formInstance.FormData; ;
            List<ContentPage> contentPages = formService.GenerateCarouselLayout(formInstance.FormModelView, formInstance.FormData);

            foreach(ContentPage page in contentPages)
            {
                Children.Add(page);
            }



        }
    }
}

