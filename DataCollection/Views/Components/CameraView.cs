using System;
using DataCollection.Entities;
using Plugin.Media;
using Xamarin.Forms;
using System.Threading.Tasks;
using System.Collections.Generic;
using DataCollection.DependencyServices;
using System.Threading;

namespace DataCollection.Views.Components
{
    public class CameraView : ContentView
    {
        async void TakeVideoButton_Clicked1(object sender, EventArgs e)
        {
            /*var questions = new List<string> { "Photo", "Cancel", "Take Video", "Choose Video" };
            MessagingCenter.Send<object, List<string>>(this, "PhotoMessageQuestion", questions);*/

            //Find parent page 
            var response = await ((Page)this.Parent.Parent.Parent.Parent.Parent.Parent).DisplayActionSheet("Video", "Cancel", "Take Video", "Choose Video");

            if (response == "Take Video")
            {
                TakeVideo();
            }
            else if (response == "Choose Video")
            {
                ChooseVideo();
            }
        }


        
        Button TakePhotoButton;
        Button ChoosePhotoButton;
        Button TakeVideoButton;
        Button ChooseVideoButton;
        Image CameraPhotoImage;
        Label MessageLabel;
        BoxView photoLineSeparator;
        BoxView videoLineSeparator;
        Image CameraVideoImage;
        string AssessmentTrackingNumber;
        string ComponentPath;

        private readonly SemaphoreSlim _semaphoreSlim = new SemaphoreSlim(1, 1);

        public  CameraView(Component c, string formData, string assessentTrackingNumber)
        {
            AssessmentTrackingNumber = assessentTrackingNumber;
            ComponentPath = c.path;

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
            //ChoosePhotoButton.Clicked += ChoosePhotoButton_Clicked;

            TakeVideoButton = new Button();
            //TakeVideoButton.Text = "Take Video";
            TakeVideoButton.Image = "Video.png";
            //TakeVideoButton.Clicked += TakeVideoButton_Clicked;
            TakeVideoButton.Clicked += TakeVideoButton_Clicked1;

            CameraVideoImage = new Image();
            //CameraVideoImage.HorizontalOptions = LayoutOptions.EndAndExpand;
            CameraVideoImage.HeightRequest = 100;

            ChooseVideoButton = new Button();
            //ChooseVideoButton.Text = "Choose Video";
            ChooseVideoButton.Image = "Video.png";
            //ChooseVideoButton.Clicked += ChooseVideoButton_Clicked;

            photoLineSeparator = new BoxView();
            photoLineSeparator.HeightRequest = 1;
            photoLineSeparator.Color = Color.FromHex("#EAEAEA");
            photoLineSeparator.Margin = new Thickness(0, 25, 0, 0);

            videoLineSeparator = new BoxView();
            videoLineSeparator.HeightRequest = 1;
            videoLineSeparator.Color = Color.FromHex("#EAEAEA");
            videoLineSeparator.Margin = new Thickness(0, 25, 0, 0);

            Label lblTakePhoto = new Label();
            lblTakePhoto.Text = "Photo";

            Label lblTakeVideo = new Label();
            lblTakeVideo.Text = "Video";

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

            MessageLabel = new Label();
            MessageLabel.VerticalOptions = LayoutOptions.CenterAndExpand;
            MessageLabel.TextColor = Color.Green;

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
                            }
                        }

                    },
                    new StackLayout
                    {
                        HorizontalOptions = LayoutOptions.EndAndExpand,
                        Children=
                        {
                            MessageLabel//CameraVideoImage
                        }
                    }
                }
            };


            //Images = new List<Image>();

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

            /*
            MessagingCenter.Subscribe<object, string>(this, "PhotoMessageAnswer", (sender, arg) =>
            {
                //System.Diagnostics.Debug.WriteLine("User choose: {0}", arg);
                if(arg == "Take Photo")
                {
                    TakePhoto();
                }
                else if(arg == "Choose Photo")
                {
                    ChoosePhoto();
                }
                else if(arg == "Choose Video")
                {
                    ChooseVideo();
                }
                else if(arg == "Take Video")
                {
                    TakeVideo();
                }
            });
            */

        }


        private async void TakePhotoButton_Clicked(object sender, EventArgs e)
        {
            //create messagecenter to DisplayMessageSheet on the screen
            //var questions = new List<string> { "Photo", "Cancel", "Take Photo", "Choose Photo" };
            //MessagingCenter.Send<object, List<string>>(this, "PhotoMessageQuestion", questions);

            //Find parent page 
            var response = await ((Page)this.Parent.Parent.Parent.Parent.Parent.Parent).DisplayActionSheet("Photo", "Cancel", "Take Photo", "Choose Photo");

            if (response == "Take Photo")
            {
                TakePhoto();
            }
            else if (response == "Choose Photo")
            {
                ChoosePhoto();
            }

         }

        private async void TakePhoto()
        {
            //await _semaphoreSlim.WaitAsync();

            await CrossMedia.Current.Initialize();

            if (!CrossMedia.Current.IsCameraAvailable || !CrossMedia.Current.IsTakePhotoSupported)
            {

                //DisplayAlert("No Camera", ":( No camera available.", "OK");
                MessageLabel.Text = "No Camera";
                return;
            }

            string compPath = ComponentPath.Replace(".", "_");
            string fileName = AssessmentTrackingNumber + "_" + compPath + ".jpg";

            var file = await CrossMedia.Current.TakePhotoAsync(new Plugin.Media.Abstractions.StoreCameraMediaOptions
            {
                Directory = "Sample",
                Name = fileName,
                SaveToAlbum = true,
                PhotoSize = Plugin.Media.Abstractions.PhotoSize.Full //Plugin.Media.Abstractions.PhotoSize.Small

            });

            if (file == null)
                return;


            //Save
            DependencyService.Get<IDataCollectionDependencyService>().SaveImage(file.GetStream(), AssessmentTrackingNumber, fileName);


            //await this.DisplayAlert("File Location", file.Path, "OK");
            //MessageLabel.Text = "File Location: " + file.Path;
            CameraPhotoImage.Source = ImageSource.FromStream(() =>
            {
                var stream = file.GetStream();
                return stream;
            });

            //_semaphoreSlim.Release();

            MessagingCenter.Unsubscribe<object, string>(this, "PhotoMessageAnswer");
        }

        private async void ChoosePhoto()
        {
            //await _semaphoreSlim.WaitAsync();

            var test = await CrossMedia.Current.PickPhotoAsync(
                    new Plugin.Media.Abstractions.PickMediaOptions
                    {
                        PhotoSize = Plugin.Media.Abstractions.PhotoSize.Small
                    });
            if (test == null)
                return;

            CameraPhotoImage.Source = ImageSource.FromStream(() =>
            {
                var stream = test.GetStream();
                return stream;
            });

            string compPath = ComponentPath.Replace(".", "_");
            string fileName = AssessmentTrackingNumber + "_" + compPath + ".jpg";
            //Save
            DependencyService.Get<IDataCollectionDependencyService>().SaveImage(test.GetStream(), AssessmentTrackingNumber, fileName);
                

            test.Dispose();
            //_semaphoreSlim.Release();

            MessagingCenter.Unsubscribe<object, string>(this, "PhotoMessageAnswer");
        }


        private async void ChooseVideo()
        {
            //await _semaphoreSlim.WaitAsync();

            if (!CrossMedia.Current.IsPickVideoSupported)
            {
                return;
            }
            var file = await CrossMedia.Current.PickVideoAsync();

            if (file == null)
                return;

            CameraVideoImage.Source = ImageSource.FromStream(() =>
            {
                var stream = file.GetStream();
                return stream;
            });

            string compPath = ComponentPath.Replace(".", "_");
            string fileName = AssessmentTrackingNumber + "_" + compPath + ".mp4";
            //Save
            DependencyService.Get<IDataCollectionDependencyService>().SaveImage(file.GetStream(), AssessmentTrackingNumber, fileName);
            MessageLabel.Text = "Video Saved"; 

            file.Dispose();
           // _semaphoreSlim.Release();

            MessagingCenter.Unsubscribe<object, string>(this, "PhotoMessageAnswer");
        }


        /*private void TakeVideoButton_Clicked(object sender, EventArgs e)
        {
            //create messagecenter to DisplayMessageSheet on the screen
            var questions = new List<string> { "Photo", "Cancel", "Take Video", "Choose Video" };
            MessagingCenter.Send<object, List<string>>(this, "PhotoMessageQuestion", questions);

        }*/

        private async void TakeVideo()
        {
            //await _semaphoreSlim.WaitAsync();

            if (!CrossMedia.Current.IsCameraAvailable || !CrossMedia.Current.IsTakeVideoSupported)
            {
                //DisplayAlert("No Camera", ":( No camera avaialble.", "OK");
                return;
            }

            string compPath = ComponentPath.Replace(".", "_");
            string fileName = AssessmentTrackingNumber + "_" + compPath + ".mp4";

            var file = await CrossMedia.Current.TakeVideoAsync(new Plugin.Media.Abstractions.StoreVideoOptions
            {
                Name = fileName,
                Directory = "DefaultVideos",
                SaveToAlbum=true
            });

            if (file == null)
                return;
            
            CameraVideoImage.Source = ImageSource.FromStream(() =>
                {
                    var stream = file.GetStream();
                    return stream;
                }); 


            //Save
            DependencyService.Get<IDataCollectionDependencyService>().SaveImage(file.GetStream(), AssessmentTrackingNumber, fileName);
            MessageLabel.Text = "Video Saved";

            file.Dispose();
            //_semaphoreSlim.Release();

            MessagingCenter.Unsubscribe<object, string>(this, "PhotoMessageAnswer");
        }


    }
}

