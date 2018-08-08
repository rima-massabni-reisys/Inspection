using System;
using DataCollection.Entities;
using Plugin.Media;
using Xamarin.Forms;
using System.Threading.Tasks;
using System.Collections.Generic;

namespace DataCollection.Views.Components
{
    public class CameraView : ContentView
    {
        
        Button TakePhotoButton;
        Button ChoosePhotoButton;
        Button TakeVideoButton;
        Button ChooseVideoButton;
        Image CameraImage;
        Label MessageLabel;
        List<Image> Images;
        public  CameraView(Component c, string formData)
        {
            TakePhotoButton = new Button();
            TakePhotoButton.Text = c.text;
            TakePhotoButton.Clicked += TakePhotoButton_Clicked;

            ChoosePhotoButton = new Button();
            ChoosePhotoButton.Text = "Choose Photo";
            ChoosePhotoButton.Clicked += ChoosePhotoButton_Clicked;

            TakeVideoButton = new Button();
            TakeVideoButton.Text = "Take Video";
            TakeVideoButton.Clicked += TakeVideoButton_Clicked;

            ChooseVideoButton = new Button();
            ChooseVideoButton.Text = "Choose Video";
            ChooseVideoButton.Clicked += ChooseVideoButton_Clicked;

            CameraImage = new Image();
            Images = new List<Image>();
            MessageLabel = new Label();
            Content = new StackLayout
            {
                Orientation = StackOrientation.Horizontal,
                Children =
                {
                    TakePhotoButton, ChoosePhotoButton,
                    TakeVideoButton, ChooseVideoButton,
                    MessageLabel,
                    CameraImage

                }
            };
        }

        private async void TakePhotoButton_Clicked(object sender, EventArgs e)
        {
                await CrossMedia.Current.Initialize();
    
                if (!CrossMedia.Current.IsCameraAvailable || !CrossMedia.Current.IsTakePhotoSupported)
                {

                    //DisplayAlert("No Camera", ":( No camera available.", "OK");
                    MessageLabel.Text = "No Camera";    
                    return;
                }

                var file = await CrossMedia.Current.TakePhotoAsync(new Plugin.Media.Abstractions.StoreCameraMediaOptions
                {
                    Directory = "Sample",
                    Name = "test.jpg",
                    SaveToAlbum= true,
                    PhotoSize = Plugin.Media.Abstractions.PhotoSize.Small 
                    /*Name = "test1.jpg",
                    SaveToAlbum = AlbumSwitch.On,
                    PhotoSize = SizeSwitch.On ? Plugin.Media.Abstractions.PhotoSize.Medium : Plugin.Media.Abstractions.PhotoSize.Full,
                    OverlayViewProvider = OverlaySwitch.On ? func : null,
                    AllowCropping = CroppingSwitch.On,
                    CompressionQuality = (int)SliderQuality.Value,
                    Directory = "Sample",
                    DefaultCamera = FrontSwitch.On ? Plugin.Media.Abstractions.CameraDevice.Front : Plugin.Media.Abstractions.CameraDevice.Rear,
                    RotateImage = SwitchRotate.On */
                });

                if (file == null)
                    return;

                //await this.DisplayAlert("File Location", file.Path, "OK");
                MessageLabel.Text = "File Location: " + file.Path;
                CameraImage.Source = ImageSource.FromStream(() =>
                {
                    var stream = file.GetStream();
                    return stream;
                }); 
         }


        private async void ChoosePhotoButton_Clicked(object sender, EventArgs e)
        {
            var test = await CrossMedia.Current.PickPhotoAsync(
                    new Plugin.Media.Abstractions.PickMediaOptions
                    {
                        /*PhotoSize = SizeSwitch.On ? Plugin.Media.Abstractions.PhotoSize.Medium : Plugin.Media.Abstractions.PhotoSize.Full,
                        CompressionQuality = (int)SliderQuality.Value,
                        RotateImage = SwitchRotate.On*/
                        PhotoSize = Plugin.Media.Abstractions.PhotoSize.Small
                    });
            if (test == null)
                return;

            //new UIAlertView("Success", test.Path, null, "OK").Show();

            //var stream = test.GetStream();
            //using (var data = NSData.FromStream(stream))
            //    MainImage.Image = UIImage.LoadFromData(data);
            CameraImage.Source = ImageSource.FromStream(() =>
                {
                var stream = test.GetStream();
                    return stream;
                }); 

            test.Dispose();
        }

        async void ChooseVideoButton_Clicked(object sender, EventArgs e)
        {
            var test = await CrossMedia.Current.PickVideoAsync();
            if (test == null)
                return;

            //new UIAlertView("Success", test.Path, null, "OK").Show();

            test.Dispose();
        }


        async void TakeVideoButton_Clicked(object sender, EventArgs e)
        {
            var test = await CrossMedia.Current.TakeVideoAsync(new Plugin.Media.Abstractions.StoreVideoOptions
            {
                Name = "test1.mp4",
                SaveToAlbum = true
            });

            if (test == null)
                return;

            //new UIAlertView("Success", test.Path, null, "OK").Show();

            test.Dispose();
        }


    }
}

