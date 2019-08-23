using System;
using System.Collections.Generic;
using DataCollection.DependencyServices;
using DataCollection.Entities;
using DataCollection.Services;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json.Schema;
using Xamarin.Forms;
using System.Linq;
using Kalect.Services.Entities;
using Kalect.Services;
using Newtonsoft.Json;
using Xamarin.Essentials;
using Kalect.Services.Interfaces;
using System.Threading;

namespace Kalect.Demo
{
    public class InspectionDetail : ContentPage
    {
        void QuestionButton_Clicked(object sender, EventArgs e)
        {
            //for other buttons revert color back to Gray
            foreach (Button qbtn in questionNavigationButtonBarLayout.Children)
            {
                qbtn.BackgroundColor = Color.FromHex("#EAEAEA");
                qbtn.TextColor = Color.Black;
            }

            //set the select button color and load question
            Xamarin.Forms.Button btn = (Button)sender;
            btn.BackgroundColor = Color.FromHex("#3693FF");
            btn.TextColor = Color.White;
            formGroup = (FormGroup)btn.CommandParameter;

            //reget formInstance in case it has been updated
            formInstance = formService.GetFormInstance(AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), SelectedFriendlyName);
            LoadQuestions(formGroup);

        }

        void SaveToolbarItem_Clicked(object sender, EventArgs e)
        {
            SaveAction();
        }

        private void SaveAction()
        {
            //Read formData
            string formData = FormDataService.FormData;
            
            //Save
            DependencyService.Get<IDataCollectionDependencyService>().SaveFormData(formData, AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), SelectedFriendlyName, "FormData");
            UpdateAssessmentJsonOnDevice();

            var answer = DisplayAlert("SAVE", "Form Saved Succesfully", "OK");
        }

        void OrientationSensor_ReadingChanged(object sender, OrientationSensorChangedEventArgs e)
        {
            SetNavigationBarOnOrientation(); 
        }

        void SetNavigationBarOnOrientation()
        {
            var orientation = DependencyService.Get<IDeviceOrientationDependenyServices>().GetOrientation();
            switch (orientation)
            {
                case DeviceOrientation.Undefined:
                    NavigationPage.SetHasNavigationBar(this, true);
                    break;
                case DeviceOrientation.Landscape:
                    NavigationPage.SetHasNavigationBar(this, false);
                    break;
                case DeviceOrientation.Portrait:
                    NavigationPage.SetHasNavigationBar(this, true);
                    break;
            }
        }

        string SelectedFriendlyName;
        string ValidationSchema;
        FormInstance formInstance;
        FormService formService;
        StackLayout PageLayout;
        Label lblErrorMessage;
        FormGroup formGroup;
        ToolbarItem SaveToolbarItem;
        StackLayout questionNavigationButtonBarLayout;
        private readonly SemaphoreSlim _semaphoreSlim = new SemaphoreSlim(1, 1);

        public InspectionDetail(Sections selectedSection)
        {
            
            UpdateAssessmentJsonOnDevice();

            Title = "Inspection - " +AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString();

            SelectedFriendlyName = selectedSection.SectionFriendlyName;
            formService = new FormService();

            CreateToolBar();

            CreateErrorLabel();

            //Get Form Instance
            formInstance = formService.GetFormInstance(AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), selectedSection.SectionFriendlyName);
            ValidationSchema = formInstance.ValidationSchema;

            //generate Layout Dynamically
            PageLayout = new StackLayout();

            StackLayout formNameLayout = new StackLayout();
            formNameLayout.Padding = new Thickness(25, 25, 0, 0);
            Label lblFormName = new Label();
            lblFormName.Text = selectedSection.SectionDisplayName;
            lblFormName.TextColor = Color.FromHex("#B0B0B0");
            lblFormName.FontSize = 30;
            formNameLayout.Children.Add(lblFormName);
            PageLayout.Children.Add(formNameLayout);

            questionNavigationButtonBarLayout = new StackLayout();
            questionNavigationButtonBarLayout.Orientation = StackOrientation.Horizontal;
            questionNavigationButtonBarLayout.Padding = new Thickness(25, 10, 10, 10);
            questionNavigationButtonBarLayout.FlowDirection = FlowDirection.LeftToRight;

            ScrollView qbar = new ScrollView();
            qbar.FlowDirection = FlowDirection.LeftToRight;
            qbar.Orientation = ScrollOrientation.Horizontal;
            qbar.HorizontalScrollBarVisibility = ScrollBarVisibility.Always;

            qbar.Content = questionNavigationButtonBarLayout;

            //PageLayout.Children.Add(questionNavigationButtonBarLayout);
            PageLayout.Children.Add(qbar);

            //Create Button list for Navigation
            Button questionButton;
            foreach (FormGroup fg in formInstance.FormModelView.formgroups)
            {
                if (!fg.disabled)
                {
                    questionButton = new Button();
                    questionButton.WidthRequest = 80;
                    questionButton.HeightRequest = 80;
                    questionButton.CornerRadius = 40;
                    questionButton.Margin = new Thickness(0, 0, 20, 0);
                    questionButton.BackgroundColor = Color.FromHex("#EAEAEA");
                    questionButton.Text = fg.text;
                    questionButton.TextColor = Color.Black;
                    questionButton.FontSize = 20;
                    questionButton.Clicked += QuestionButton_Clicked;
                    questionButton.CommandParameter = fg;
                    questionNavigationButtonBarLayout.Children.Add(questionButton);
                }

            }

            //Add Error Message
            PageLayout.Children.Add(lblErrorMessage);

            //Load First Question
            formGroup = formInstance.FormModelView.formgroups[0];

            LoadFirstQuestionByDefault(formGroup);

            Content = new ScrollView
            {
                Content = PageLayout
            };
        }

        private void CreateToolBar()
        {
            SaveToolbarItem = new ToolbarItem();
            SaveToolbarItem.Text = "Save";
            SaveToolbarItem.Clicked += SaveToolbarItem_Clicked;
            ToolbarItems.Add(SaveToolbarItem);
        }

        private void CreateErrorLabel()
        {
            lblErrorMessage = new Label();
            lblErrorMessage.TextColor = Color.DarkRed;
        }

        private void LoadFirstQuestionByDefault(FormGroup fg)
        {
            //Select the color of first button
            View firstButton = questionNavigationButtonBarLayout.Children.FirstOrDefault<View>();
            Button frstbtn = (Button)firstButton;
            frstbtn.BackgroundColor  = Color.FromHex("#3693FF");
            frstbtn.TextColor = Color.White;
            
            LoadQuestions(fg);
        }

        private void LoadQuestions(FormGroup fg)
        {
            //Set static FormData
            FormDataService.FormData = formInstance.FormData;
            StackLayout formGroupLayout = new StackLayout();

            Switch sw = null;
           
            formGroupLayout.Children.Add(formService.GenerateLayoutForSelectedFormGroup(fg, formInstance.FormData, formInstance.WebAttachments, AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), ref sw, "CultureGrowth_C_Question1"));

            //check if formGroupLayout has been added for previous question. Remove that add new one.
            if (PageLayout.Children.Count == 3)
            {
                PageLayout.Children.RemoveAt(2);
            }
            lblErrorMessage.Text = string.Empty;
            PageLayout.Children.Add(formGroupLayout);

            if (sw != null)
            {
                if (!sw.IsToggled)
                {
                    questionNavigationButtonBarLayout.Children[1].IsEnabled = false;
                    questionNavigationButtonBarLayout.Children[2].IsEnabled = false;
                }

                sw.Toggled += (object sender, ToggledEventArgs e) => {
                    questionNavigationButtonBarLayout.Children[1].IsEnabled = e.Value;
                    questionNavigationButtonBarLayout.Children[2].IsEnabled = e.Value;
                };
            }
        }

        private void UpdateAssessmentJsonOnDevice()
        {
            //Update Assessment to inprogress
            AppDataWallet.SelectedAssessmentMetadata.AssessmentStatus = "In Progress";
            AppDataWallet.SelectedAssessmentMetadata.AssessmentStatusCode = 9;
            DateTime now = DateTime.Now;
            //string formattedDate = "Last Update: " + Environment.NewLine+ now.ToShortDateString() + Environment.NewLine + now.ToShortTimeString();
            AppDataWallet.SelectedAssessmentMetadata.LastUpdatedDate = DateTime.Now.ToString(); //"Last Update: " +Environment.NewLine+ DateTime.Now;
            //AppDataWallet.SelectedAssessmentMetadata.LastUpdatedDateFormatted = AppDataWallet.SelectedAssessmentMetadata.LastUpdatedDate.TimeAgo();

            AssessmentService assessmentService = new AssessmentService();
            assessmentService.UpdateAssessmentOnDevice(JsonConvert.SerializeObject(AppDataWallet.SelectedAssessmentMetadata), AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString());
                
        }
    }
}

