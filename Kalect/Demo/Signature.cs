using System;
using Xamarin.Forms;
using SignaturePad.Forms;
using System.IO;
using Kalect.Services.Interfaces;
using Kalect.Services;
using Newtonsoft.Json;

namespace Kalect.Demo
{
    public class Signature : ContentPage
    {
        void TxtFullName_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            //lblFullNameValidation.IsVisible = false;
            //txtFullName.BackgroundColor = Color.White;
        }


        async void BtnSubmit_Clicked(object sender, EventArgs e)
        {
            if(txtFullName.Text != null && txtFullName.Text.Length > 0)
            {
                lblFullNameValidation.IsVisible = false;
                txtFullName.BackgroundColor = Color.White;

                string signatureFileName = txtFullName.Text + "_Signature.png";
                Stream bitmap = await signaturePadView.GetImageStreamAsync(SignatureImageFormat.Png);

                if (bitmap != null)
                {
                    //Save
                    DependencyService.Get<IKalectDependencyServices>().SaveImage(bitmap, AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString(), signatureFileName);

                    // update status to "Complete"
                    AppDataWallet.SelectedAssessmentMetadata.AssessmentStatus = "Complete";
                    AppDataWallet.SelectedAssessmentMetadata.AssessmentStatusCode = 10;
                    DateTime now = DateTime.Now;
                    AppDataWallet.SelectedAssessmentMetadata.LastUpdatedDate = DateTime.Now.ToString();
                    AssessmentService assessmentService = new AssessmentService();
                    assessmentService.UpdateAssessmentOnDevice(JsonConvert.SerializeObject(AppDataWallet.SelectedAssessmentMetadata), AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString());

                    lblSuccessMessage.IsVisible = true;
                }
                else
                {
                    await DisplayAlert("Signature", "Please Sign", "Ok");
                }

            }
            else
            {
                lblFullNameValidation.IsVisible = true;
                txtFullName.BackgroundColor = Color.FromHex("#F5B7B1");
            }


        }


        SignaturePadView signaturePadView;
        Entry txtFullName;
        Label lblFullNameValidation;
        Label lblSuccessMessage;
        public Signature()
        {
            //ToolbarItem saveToolbarItem = new ToolbarItem();
            //saveToolbarItem.Text = "Save";
            //saveToolbarItem.Clicked += SaveToolbarItem_Clicked;
            //ToolbarItems.Add(saveToolbarItem);

            Title = "Inspection - " + AppDataWallet.SelectedAssessmentMetadata.AssessmentTrackingNumber.ToString();

            //Success Message
            lblSuccessMessage = new Label();
            lblSuccessMessage.Text = "Signature Recorded. Please go back to Dashboard and Sync Inspection.";
            lblSuccessMessage.BackgroundColor = Color.FromHex("#9DC183");
            lblSuccessMessage.TextColor = Color.White;
            lblSuccessMessage.HeightRequest = 40;
            lblSuccessMessage.IsVisible = false;
            lblSuccessMessage.HorizontalTextAlignment = TextAlignment.Center;
            lblSuccessMessage.VerticalTextAlignment = TextAlignment.Center;
            lblSuccessMessage.Margin = new Thickness(0, 0, 0, 0);

            //Form Header Label
            Label formTitle = new Label();
            formTitle.Text = "Submit";
            formTitle.FontSize = 30;
            formTitle.Margin = new Thickness(0, 0, 0, 15);
            formTitle.TextColor = Color.FromHex("#B0B0B0");

            Label lblFullName = new Label();
            lblFullName.Text = "Full Name";

            Label lblFullNameStar = new Label();
            lblFullNameStar.Text = "*";
            lblFullNameStar.TextColor = Color.Red;

            txtFullName = new Entry();
            txtFullName.Placeholder = "Enter your Name";
            txtFullName.HeightRequest = 40;
            txtFullName.PropertyChanged += TxtFullName_PropertyChanged;

            lblFullNameValidation = new Label();
            lblFullNameValidation.Text = "Name is Required";
            lblFullNameValidation.TextColor = Color.Red;
            lblFullNameValidation.IsVisible = false;

            BoxView lineSeparator = new BoxView();
            lineSeparator.HeightRequest = 1;
            lineSeparator.Color = Color.FromHex("#EAEAEA");
            lineSeparator.Margin = new Thickness(0, 25, 0, 0);

            Label lblSignature = new Label();
            lblSignature.Text = "Signature";
            lblSignature.Margin = new Thickness(0, 15, 0, 0);


            signaturePadView = new SignaturePadView();
            signaturePadView.StrokeWidth = 10;
            signaturePadView.StrokeColor = Color.Black;
            signaturePadView.BackgroundColor = Color.White;
            signaturePadView.WidthRequest = 200;
            signaturePadView.HeightRequest = 260;


            var signatureLayout = new StackLayout
            {
                BackgroundColor = Color.FromHex("#EAEAEA"),
                Padding = 1,
                Children ={
                    signaturePadView
                }
            };

            Button btnSubmit = new Button();
            btnSubmit.Text = "Confirm and Accept";
            btnSubmit.BorderColor = Color.FromHex("#EAEAEA");
            btnSubmit.BorderWidth = 1;
            btnSubmit.HeightRequest = 50;
            btnSubmit.WidthRequest = 150;
            btnSubmit.HorizontalOptions = LayoutOptions.EndAndExpand;
            btnSubmit.Margin = new Thickness(0, 15, 0, 0);
            btnSubmit.Clicked += BtnSubmit_Clicked;


            Content = new StackLayout
            {
                Children =
                {
                    lblSuccessMessage,
                    new StackLayout
                    {
                        Padding = new Thickness(25, 25, 25, 0),
                        Children = {
                            
                            formTitle,
                            new StackLayout{
                                Orientation = StackOrientation.Horizontal,
                                Children={
                                    lblFullName,
                                    lblFullNameStar
                                }
                            },
                            txtFullName,
                            lblFullNameValidation,
                            lineSeparator,
                            lblSignature,
                            signatureLayout,
                            btnSubmit
                                }
                            }
                    }
            };
        }
    }
}

