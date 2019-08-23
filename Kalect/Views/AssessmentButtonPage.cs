using System;
using System.Collections.Generic;
using DataCollection.DependencyServices;
using DataCollection.Entities;
using DataCollection.Services;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json.Schema;
using Xamarin.Forms;
using System.Linq;


namespace Kalect.Views
{
    public class AssessmentButtonPage : ContentPage
    {
        void QuestionButton_Clicked(object sender, EventArgs e)
        {
            
            Xamarin.Forms.Button btn = (Button)sender;
            _formGroup = (FormGroup)btn.CommandParameter;
            LoadQuestions(_formGroup);

            //DisplayAlert("Button Clicked",btn.CommandParameter, "Ok");
        }


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
            JSchema schema = JSchema.Parse(_validationSchema);
            bool valid = fd.IsValid(schema, out messages);

            IList<string> errorMessages = messages.ToArray();
            List<string> errorMessageToDisplay = new List<string>();
            foreach(string errorMessage in errorMessages)
            {
                foreach(Component comp in _formGroup.components)
                {
                    if (errorMessage.Contains(comp.path))
                    {
                        errorMessageToDisplay.Add(errorMessage);
                    }
                }
                    
            }

            //Show Error
            //lblErrorMessage.Text = string.Join(",", messages.ToArray());
            lblErrorMessage.Text = string.Join(Environment.NewLine, errorMessageToDisplay.ToArray());

            //Save
            //DependencyService.Get<ISaveAndLoad>().SaveText(AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), friendlyName, formData);
            DependencyService.Get<IDataCollectionDependencyService>().SaveFormData(formData, AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), _friendlyName, "FormData");

            //DisplayAlert("Save", "Form Saved Succesfully", "OK");
            if (errorMessageToDisplay.Count == 0)
            {
                var answer = DisplayAlert("Saved with No Errors", "Form Saved Succesfully", "OK");
            }
            else
            {
                var answer = DisplayAlert("Saved With Errors (" + errorMessageToDisplay.Count + ")", "Please check the Error messages for more details.", "OK");
            }
        }

        public AssessmentButtonPage()
        {
            Content = new StackLayout
            {
                Children = {
                    new Label { Text = "Hello ContentPage" }
                }
            };
        }

        string _validationSchema;
        string _friendlyName;
        FormService _formService;
        StackLayout _pageLayout;
        FormInstance _formInstance;
        Label lblErrorMessage;
        ToolbarItem saveToolbarItem;
        FormGroup _formGroup;

        public AssessmentButtonPage(string selectedItem)
        {
            _friendlyName = selectedItem;

            CreateToolBar();
            CreateErrorLabel();


            _formService = new FormService();

            //Get Form Instance
            _formInstance = _formService.GetFormInstance(AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), selectedItem);
            _validationSchema = _formInstance.ValidationSchema;
            //generate Layout Dynamically

            //Set the bar naviagtion
            _pageLayout = new StackLayout();
            StackLayout questionNavigationButtonBarLayout = new StackLayout();
            questionNavigationButtonBarLayout.Orientation = StackOrientation.Horizontal;
            _pageLayout.Children.Add(questionNavigationButtonBarLayout);

            //Create Button list for Navigation
            Button questionButton;
            foreach (FormGroup formGroup in _formInstance.FormModelView.formgroups)
            {
                questionButton = new Button();
                questionButton.Text = formGroup.text;
                questionButton.Clicked += QuestionButton_Clicked;
                questionButton.CommandParameter = formGroup;
                questionNavigationButtonBarLayout.Children.Add(questionButton);

            }

            //Add Error Message
            _pageLayout.Children.Add(lblErrorMessage);

            //Load First Question
            _formGroup = _formInstance.FormModelView.formgroups[0];
            LoadFirstQuestionByDefault(_formGroup);

            //Final Page Content
            //Content = _pageLayout;
            //scrollView = new ScrollView();
            Content = _pageLayout;

            /*Content = new ScrollView
            {
                Content = _pageLayout
            };*/

        }

        private void CreateToolBar()
        {
            saveToolbarItem = new ToolbarItem();
            saveToolbarItem.Text = "Save";
            saveToolbarItem.Clicked += SaveToolbarItem_Clicked;
            ToolbarItems.Add(saveToolbarItem);
        }

        private void CreateErrorLabel()
        {
            lblErrorMessage = new Label();
            lblErrorMessage.TextColor = Color.DarkRed;
        }

        private void LoadFirstQuestionByDefault(FormGroup formGroup)
        {
            LoadQuestions(formGroup);
        }

        private void LoadQuestions(FormGroup formGroup)
        {
            //Set static FormData
            FormDataService.FormData = _formInstance.FormData;
            StackLayout formGroupLayout = new StackLayout();
            //_formGroupLayout.Children.Clear();
            formGroupLayout.Children.Add(_formService.GenerateLayoutForSelectedFormGroup(formGroup, _formInstance.FormData, _formInstance.WebAttachments, AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString()));

            //check if formGroupLayout has been added for previous question. Remove that add new one.x
            if (_pageLayout.Children.Count == 3)
            {
                _pageLayout.Children.RemoveAt(2);
            }
            lblErrorMessage.Text = string.Empty;
            _pageLayout.Children.Add(formGroupLayout);

        }
    }
}

