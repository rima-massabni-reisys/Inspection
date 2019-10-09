﻿using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
//using Kalect.Views;
using Kalect.Demo;

[assembly: XamlCompilation(XamlCompilationOptions.Compile)]
namespace Kalect
{
    public partial class App : Application
    {
        public App()
        {
            //InitializeComponent();

            MainPage = new Login(); //WelcomePage(); //MainPage();
           // MainPage = new InspectionHome();//for testing only
        }

        protected override void OnStart()
        {
            // Handle when your app starts
        }

        protected override void OnSleep()
        {
            // Handle when your app sleeps
        }

        protected override void OnResume()
        {
            // Handle when your app resumes
        }
    }
}
