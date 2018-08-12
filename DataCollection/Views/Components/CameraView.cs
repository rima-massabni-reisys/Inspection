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
        Image CameraPhotoImage;
        Label MessageLabel;
        BoxView photoLineSeparator;
        BoxView videoLineSeparator;
        Image CameraVideoImage;
        public  CameraView(Component c, string formData)
        {
            TakePhotoButton = new Button();
            //TakePhotoButton.Text = c.text;
            TakePhotoButton.Image = "Camera.png";
            TakePhotoButton.Clicked += TakePhotoButton_Clicked;

            CameraPhotoImage = new Image();
            //CameraPhotoImage.HorizontalOptions = LayoutOptions.EndAndExpand;
            CameraPhotoImage.HeightRequest = 100;


            ChoosePhotoButton = new Button();
            ChoosePhotoButton.Image = "Camera.png";
            //ChoosePhotoButton.Text = "Choose Photo";
            ChoosePhotoButton.Clicked += ChoosePhotoButton_Clicked;

            TakeVideoButton = new Button();
            //TakeVideoButton.Text = "Take Video";
            TakeVideoButton.Image = "Video.png";
            TakeVideoButton.Clicked += TakeVideoButton_Clicked;

            CameraVideoImage = new Image();
            //CameraVideoImage.HorizontalOptions = LayoutOptions.EndAndExpand;
            CameraPhotoImage.HeightRequest = 100;

            ChooseVideoButton = new Button();
            //ChooseVideoButton.Text = "Choose Video";
            ChooseVideoButton.Image = "Video.png";
            ChooseVideoButton.Clicked += ChooseVideoButton_Clicked;

            photoLineSeparator = new BoxView();
            photoLineSeparator.HeightRequest = 1;
            photoLineSeparator.Color = Color.FromHex("#EAEAEA");
            photoLineSeparator.Margin = new Thickness(0, 25, 0, 0);

            videoLineSeparator = new BoxView();
            videoLineSeparator.HeightRequest = 1;
            videoLineSeparator.Color = Color.FromHex("#EAEAEA");
            videoLineSeparator.Margin = new Thickness(0, 25, 0, 0);

            Label lblTakePhoto = new Label();
            lblTakePhoto.Text = "Take Photo";
            Label lblChoosePhoto = new Label();
            lblChoosePhoto.Text = "Choose Photo";

            Label lblTakeVideo = new Label();
            lblTakeVideo.Text = "Take Video";
            Label lblChooseVideo = new Label();
            lblChooseVideo.Text = "Choose Video";

            StackLayout photoLayout = new StackLayout()
            {
                Orientation = StackOrientation.Horizontal,
                HeightRequest = 100,
                Children =
                {
                    new StackLayout
                    {
                        Orientation = StackOrientation.Horizontal,
                        HorizontalOptions = LayoutOptions.StartAndExpand,
                        Children=
                        {
                            new StackLayout
                            {
                                Orientation = StackOrientation.Vertical,
                                VerticalOptions = LayoutOptions.Center,
                                HorizontalOptions = LayoutOptions.Center,
                                Children =
                                {
                                    lblTakePhoto,
                                    TakePhotoButton
                                }
                            },
                            new StackLayout
                            {
                                Orientation = StackOrientation.Vertical,
                                VerticalOptions = LayoutOptions.Center,
                                HorizontalOptions = LayoutOptions.Center,
                                Children = 
                                {
                                    lblChoosePhoto,
                                    ChoosePhotoButton
                                }
                            }
                        }

                    },
                    new StackLayout
                    {
                        HorizontalOptions = LayoutOptions.EndAndExpand,
                        Children=
                        {
                            CameraPhotoImage
                        }
                    }
                }
            };


            StackLayout videoLayout = new StackLayout()
            {
                Orientation = StackOrientation.Horizontal,
                HeightRequest = 100,
                //Padding = new Thickness(0, 10, 0, 10),
                Children =
                {
                    new StackLayout
                    {
                        Orientation = StackOrientation.Horizontal,
                        HorizontalOptions = LayoutOptions.StartAndExpand,
                        Children=
                        {
                            new StackLayout
                            {
                                Orientation = StackOrientation.Vertical,
                                VerticalOptions = LayoutOptions.Center,
                                HorizontalOptions = LayoutOptions.Center,
                                Children =
                                {
                                    lblTakeVideo,
                                    TakeVideoButton
                                }
                            },
                            new StackLayout
                            {
                                Orientation = StackOrientation.Vertical,
                                VerticalOptions = LayoutOptions.Center,
                                HorizontalOptions = LayoutOptions.Center,
                                Children =
                                {
                                    lblChooseVideo,
                                    ChooseVideoButton
                                }
                            }
                        }

                    },
                    new StackLayout
                    {
                        HorizontalOptions = LayoutOptions.EndAndExpand,
                        Children=
                        {
                            CameraVideoImage
                        }
                    }
                }
            };



            //Images = new List<Image>();
            MessageLabel = new Label();
            Content = new StackLayout
            {
                Padding = new Thickness(25, 0, 25, 0),

                Children =
                {
                    photoLayout,
                    photoLineSeparator,
                    videoLayout,
                    videoLineSeparator

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
                CameraPhotoImage.Source = ImageSource.FromStream(() =>
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
            CameraPhotoImage.Source = ImageSource.FromStream(() =>
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

