﻿using System;
using System.Collections.Generic;
using Xamarin.Forms;
using Plugin.AudioRecorder;
using System.Threading.Tasks;

namespace DataCollection.Views.Components
{
    public partial class AudioRecorderView : ContentView
    {
        AudioRecorderService recorder;
        AudioPlayer player;

        public AudioRecorderView()
        {
            InitializeComponent();

            recorder = new AudioRecorderService
            {
                StopRecordingAfterTimeout = true,
                TotalAudioTimeout = TimeSpan.FromSeconds(15),
                AudioSilenceTimeout = TimeSpan.FromSeconds(2)
            };

            player = new AudioPlayer();
            player.FinishedPlaying += Player_FinishedPlaying;
        }

        void Test_Clicked(object sender, EventArgs e)
        {
            lblTest.Text = "Clicked";
        }

        async void Record_Clicked(object sender, EventArgs e)
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
                }
            }
            catch (Exception ex)
            {
                //blow up the app!
                throw ex;
            }
        }

        void Play_Clicked(object sender, EventArgs e)
        {
            PlayAudio();
        }

        void PlayAudio()
        {
            try
            {
                var filePath = recorder.GetAudioFilePath();

                if (filePath != null)
                {
                    PlayButton.IsEnabled = false;
                    RecordButton.IsEnabled = false;

                    player.Play(filePath);
                }
            }
            catch (Exception ex)
            {
                //blow up the app!
                throw ex;
            }
        }

        void Player_FinishedPlaying(object sender, EventArgs e)
        {
            PlayButton.IsEnabled = true;
            RecordButton.IsEnabled = true;
        }

    }
}
