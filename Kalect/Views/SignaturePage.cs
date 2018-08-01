using System;
using Xamarin.Forms;
using SignaturePad.Forms;
using System.IO;

namespace Kalect.Views
{
    public class SignaturePage : ContentPage
    {
        async void SaveToolbarItem_Clicked(object sender, EventArgs e)
        {
            Stream bitmap = await signaturePadView.GetImageStreamAsync(SignatureImageFormat.Png);
        }

        SignaturePadView signaturePadView;
        Button saveSignatureButton;
        public SignaturePage()
        {
            ToolbarItem saveToolbarItem = new ToolbarItem();
            saveToolbarItem.Text = "Save";
            saveToolbarItem.Clicked += SaveToolbarItem_Clicked;
            ToolbarItems.Add(saveToolbarItem);

            //Form Header Label
            Label formTitle = new Label();
            formTitle.Text = "Signature";
            formTitle.FontSize = 30;
            //formTitle.BackgroundColor = Color.FromRgb(52,152,219);

            signaturePadView = new SignaturePadView();
            signaturePadView.StrokeWidth = 10;
            signaturePadView.StrokeColor = Color.Black;
            signaturePadView.BackgroundColor = Color.White;
            signaturePadView.WidthRequest = 280;
            signaturePadView.HeightRequest = 360;


            Content = new StackLayout
            {
                Children = {
                    formTitle,
                    signaturePadView
                }
            };
        }
    }
}

