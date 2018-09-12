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
            try
            {
                if (!recorder.IsRecording) //Record button clicked
                {
                    recorder.StopRecordingOnSilence = TimeoutSwitch.IsToggled;

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
            //Save
            DependencyService.Get<IDataCollectionDependencyService>().SaveVoiceMemo(filePath, AssessmentTrackingNumber, fileName);

        }

        Button RecordButton;
        Button PlayButton;
        Switch TimeoutSwitch;
        string ComponentPath;
        string AssessmentTrackingNumber;
        public VoiceMemoView(Component c, string formData, string assessentTrackingNumber)
        {
            ComponentPath = c.path;
            AssessmentTrackingNumber = assessentTrackingNumber;

            recorder = new AudioRecorderService
            {
                StopRecordingAfterTimeout = true,
                TotalAudioTimeout = TimeSpan.FromSeconds(15),
                AudioSilenceTimeout = TimeSpan.FromSeconds(2)
            };

            player = new AudioPlayer();
            player.FinishedPlaying += Player_FinishedPlaying;


            BoxView boxView = new BoxView();
            boxView.HeightRequest = 1;
            boxView.Color = Color.FromHex("#EAEAEA");
            boxView.Margin = new Thickness(0, 25, 0, 0);


            RecordButton = new Button();
            RecordButton.Image = "Audio.png";
            RecordButton.Clicked += RecordButton_Clicked;

            PlayButton = new Button();
            PlayButton.Image = "PlayGreen.png";
            PlayButton.Clicked += PlayButton_Clicked;


            TimeoutSwitch = new Switch();
            TimeoutSwitch.IsToggled = true;
            TimeoutSwitch.VerticalOptions = LayoutOptions.Center;
            TimeoutSwitch.HorizontalOptions = LayoutOptions.EndAndExpand;


            StackLayout voiceMemoLayout = new StackLayout()
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
                                                Margin=new Thickness(5,0,0,0)
                                            },
                                            PlayButton
                                        }
                                    }

                                }
                            },
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

            Content = voiceMemoLayout;
        }
    }
}

