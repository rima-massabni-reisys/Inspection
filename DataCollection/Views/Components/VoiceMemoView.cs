using System;
using System.Threading.Tasks;
using Plugin.AudioRecorder;
using DataCollection.Entities;
using Xamarin.Forms;
using DataCollection.DependencyServices;

namespace DataCollection.Views.Components
{
    public class VoiceMemoView : ContentView
    {

        Label RecordText = new Label();
        Label PlayText = new Label();

        void Player_FinishedPlaying(object sender, EventArgs e)
        {
            PlayButton.Image = "PlayGreen.png";
            PlayButton.IsEnabled = true;
            RecordButton.IsEnabled = true;
        }


        AudioRecorderService recorder;
        AudioPlayer player;

        void PlayButton_Clicked(object sender, EventArgs e)
        {
            PlayAudio();
        }

        void PlayAudio()
        {
            try
            {
                PlayButton.Image = "PauseYellow.png";
                var filePath = recorder.GetAudioFilePath();
                //SaveVoiceMemo();
                if (filePath != null)
                {
                    //PlayText.Text = "Found audio file";
                    PlayButton.IsEnabled = false;
                    RecordButton.IsEnabled = false;
                    player.Play(filePath);

                }

                PlayButton.Image = "PlayGreen.png";
            }
            catch (Exception ex)
            {
                //blow up the app!
                throw ex;
            }
        }

        async void RecordButton_Clicked(object sender, EventArgs e)
        {
            await RecordAudio();
        }

        async Task RecordAudio()
        {
            RecordText.Text = string.Empty;
         
            try
            {
                if (!recorder.IsRecording) //Record button clicked
                {
                    recorder.StopRecordingOnSilence = false;
                    //RecordText.Text += "REcord started           ";

                    RecordButton.IsEnabled = false;
                    PlayButton.IsEnabled = false;

                    //start recording audio
                    var audioRecordTask = await recorder.StartRecording();

                    //RecordButton.Text = "Stop Recording";
                    RecordButton.Image = "StopRecording.png";
                    RecordButton.IsEnabled = true;

                    await audioRecordTask;

                    //RecordButton.Text = "Record";
                    PlayButton.IsEnabled = true;
                }
                else //Stop button clicked
                {
                    RecordButton.IsEnabled = false;
                    RecordButton.Image = "Audio.png";
                    //stop the recording...
                    await recorder.StopRecording();

                    RecordButton.IsEnabled = true;
                    //RecordText.Text += "Record FINISHED";
                    SaveVoiceMemo();
                }
            }
            catch (Exception ex)
            {
                //blow up the app!
                throw ex;
            }
        }

        void SaveVoiceMemo()
        {
            string compPath = ComponentPath.Replace(".", "_");
            string fileName = AssessmentTrackingNumber + "_" + compPath+ ".wav";

            var filePath = recorder.GetAudioFilePath();
            if(filePath != null)
            {
                if (filePath.Equals("") || filePath.Equals(string.Empty))
                {
                    RecordText.Text = "Something went wrong during recording. Please try again.";
                    RecordText.TextColor = Color.Red;
                }
                else
                {
                    //RecordText.Text += "Recording at" + filePath;
                    RecordText.Text = "Recording Saved Successfully";
                    RecordText.TextColor = Color.Green;
                    //Save
                    DependencyService.Get<IDataCollectionDependencyService>().SaveVoiceMemo(filePath, AssessmentTrackingNumber, fileName);
                }
            }
            else
            {
                RecordText.Text = "Something went wrong during recording. Please try again.";
                RecordText.TextColor = Color.Red;
            }
            
        }

        Button RecordButton;
        Button PlayButton;
        //Switch TimeoutSwitch;
        string ComponentPath;
        string AssessmentTrackingNumber;
        public VoiceMemoView(Component c, string formData, string assessentTrackingNumber, Mode mode = Mode.Edit)
        {

            ComponentPath = c.path;
            AssessmentTrackingNumber = assessentTrackingNumber;

            recorder = new AudioRecorderService
            {
                StopRecordingAfterTimeout = true,
                TotalAudioTimeout = TimeSpan.FromSeconds(15),
                StopRecordingOnSilence = false
               
            };

            player = new AudioPlayer();
            player.FinishedPlaying += Player_FinishedPlaying;


            BoxView boxView = new BoxView();
            boxView.HeightRequest = 1;
            boxView.Color = Color.FromHex("#EAEAEA");
            boxView.Margin = new Thickness(0, 25, 0, 0);


            RecordButton = new Button();

            //RecordButton.CornerRadius = 200;
            //RecordButton.WidthRequest=
            //RecordButton.BorderColor = Color.Black;
            //RecordButton.Text = "Recorded Text";
            //RecordButton.FontSize = 24;
            RecordButton.Image = "Audio.png";
            RecordButton.Clicked += RecordButton_Clicked;

            PlayButton = new Button();
            PlayButton.Image = "Play.png";
            //PlayButton.Text = "Play";
            //PlayButton.FontSize = 24;
            PlayButton.Clicked += PlayButton_Clicked;


            /*TimeoutSwitch = new Switch();
            TimeoutSwitch.IsToggled = true;
            TimeoutSwitch.VerticalOptions = LayoutOptions.Center;
            TimeoutSwitch.HorizontalOptions = LayoutOptions.EndAndExpand;*/

            StackLayout voiceMemoLayout; 
            if (mode == Mode.Edit)
            {

                voiceMemoLayout = new StackLayout()
                {
                    Orientation = StackOrientation.Vertical,
                    Padding = new Thickness(25, 0, 25, 0),
                    Children = {
                    new StackLayout
                    {
                        Orientation = StackOrientation.Horizontal,
                        HeightRequest = 100,
                        Children =
                        {
                            new StackLayout
                            {
                                Orientation = StackOrientation.Horizontal,
                                HorizontalOptions = LayoutOptions.StartAndExpand,
                                Children =
                                {
                                    new StackLayout
                                    {
                                        Orientation= StackOrientation.Vertical,
                                        VerticalOptions= LayoutOptions.Center,
                                        HorizontalOptions=LayoutOptions.Center,
                                        Children=
                                        {
                                            new Label
                                            {
                                                Text = "Record",
                                                Margin=new Thickness(5,0,0,0)
                                            },
                                            RecordButton
                                            
                                        }
                                    },
                                    new StackLayout
                                    {
                                        Orientation= StackOrientation.Vertical,
                                        VerticalOptions= LayoutOptions.Center,
                                        HorizontalOptions=LayoutOptions.Center,
                                        Children=
                                        {
                                            new Label
                                            {
                                                Text = "Play",
                                                Margin=new Thickness(5,5,0,0)
                                            },
                                            PlayButton,
                                            PlayText
                                        }
                                    }
                                    ,
                                    new StackLayout
                                    {
                                        Orientation= StackOrientation.Vertical,
                                        VerticalOptions= LayoutOptions.Center,
                                        HorizontalOptions=LayoutOptions.Center,
                                        Children=
                                        {
                                            RecordText
                                        }
                                    }

                                }
                                
                            }/*,
                            new StackLayout
                            {
                                HorizontalOptions = LayoutOptions.EndAndExpand,
                                VerticalOptions = LayoutOptions.Center,
                                Children =
                                {
                                    new StackLayout
                                    {
                                        Orientation= StackOrientation.Vertical,// "Vertical",
                                        VerticalOptions= LayoutOptions.Center,// "Center",
                                        HorizontalOptions= LayoutOptions.Center, //"Center"
                                        Children =
                                        {
                                            new Label
                                            {
                                                Text = "Timeout after Silence"

                                            },
                                            TimeoutSwitch
                                        }
                                    }
                                }
                            }*/
                        }
                    }, new StackLayout
                    {
                        Children=
                        {
                            boxView
                        }
                    }
                }
                };
            }
            else {

                var filePath = recorder.GetAudioFilePath();
                StackLayout playFile;
                if (filePath == null)
                {
                    playFile = new StackLayout
                    {
                        Orientation = StackOrientation.Vertical,
                        VerticalOptions = LayoutOptions.Center,
                        HorizontalOptions = LayoutOptions.EndAndExpand,
                        Children =
                                        {

                                            new Label
                                            {
                                                Text = "No recorded audio found",
                                                Margin=new Thickness(5,0,0,0)
                                            },
                                        }
                    };
                }
                else{
                    playFile = new StackLayout
                    {
                        Orientation = StackOrientation.Vertical,
                        VerticalOptions = LayoutOptions.Center,
                        HorizontalOptions = LayoutOptions.EndAndExpand,
                        Children =
                                        {

                                            PlayButton
                                        }
                    };
                }
                voiceMemoLayout = new StackLayout()
                {
                    Orientation = StackOrientation.Vertical,
                    Padding = new Thickness(25, 25, 25, 0),
                    Children = {
                    new StackLayout
                    {
                        Orientation = StackOrientation.Horizontal,
                        //HeightRequest = 100,
                        Children =
                        {
                            new StackLayout
                            {
                                Orientation = StackOrientation.Horizontal,
                                HorizontalOptions = LayoutOptions.StartAndExpand,
                                Children =
                                {
                                    new StackLayout
                                    {
                                        Orientation= StackOrientation.Vertical,
                                        VerticalOptions= LayoutOptions.Center,
                                        HorizontalOptions=LayoutOptions.Center,

                                        Children=
                                        {
                                            new Label
                                            {
                                                    Text = "Recorded Play:",
                                                Margin=new Thickness(5,0,0,0)
                                            },
                                            //RecordButton
                                        }
                                    },
                                   playFile

                                }
                            }
                        }
                    }, new StackLayout
                    {
                        Children=
                        {
                            boxView
                        }
                    }
                }
                };
            }

            Content = voiceMemoLayout;
        }
    }
}

