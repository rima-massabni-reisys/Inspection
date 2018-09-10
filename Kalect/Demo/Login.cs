using System;

using Xamarin.Forms;

namespace Kalect.Demo
{
    public class Login : ContentPage
    {
        async void CmdLogin_Clicked(object sender, EventArgs e)
        {
            IsBusy = true;
            activityIndicator.IsVisible = true;
            activityIndicator.IsRunning = true;
            var agree = await DisplayAlert("Terms and Conditions", "I agree to the FDA.gov, gsa.gov and whitehouse.gov terms and conditions and the FDA privacy policy.", "Agree", "Cancel");
            if(Convert.ToBoolean(agree))
            {
                await Navigation.PushModalAsync(new InspectionHome());
            }
            IsBusy = false;
            activityIndicator.IsRunning = false;
            activityIndicator.IsVisible = false;
        }

        Image inspectIcon;
        Label lblInspect;
        Label lblRedDot;
        Image fdaLogo;
        Entry txtUserName;
        Entry txtPassword;
        Button cmdLogin;
        Switch swtchRememberMe;
        Label lblRememebrMe;
        Button cmdForgotPassword;
        Image touchImage;
        Button cmdEnableTouch;
        Button cmdRegistration;
        ActivityIndicator activityIndicator;
        public Login()
        {
         
            activityIndicator = new ActivityIndicator();
            activityIndicator.Color = Color.FromHex("#3693FF");
            activityIndicator.VerticalOptions = LayoutOptions.Center;
            activityIndicator.HorizontalOptions = LayoutOptions.Center;
            AbsoluteLayout.SetLayoutFlags(activityIndicator, AbsoluteLayoutFlags.PositionProportional);
            AbsoluteLayout.SetLayoutBounds(activityIndicator, new Rectangle(0.5, 0.5, AbsoluteLayout.AutoSize, AbsoluteLayout.AutoSize));

            this.BackgroundImage = "Background.png";

            BackgroundColor = Color.FromHex("#3F51B5");

            inspectIcon = new Image();
            inspectIcon.Source = "InspectIcon.png";
            //inspectIcon.HorizontalOptions = LayoutOptions.CenterAndExpand;
            inspectIcon.Margin = new Thickness(0, 10, 0, 2);

            lblInspect = new Label();
            lblInspect.Text = "Inspect";
            lblInspect.TextColor = Color.White;
            lblInspect.FontSize = 30;
            //lblInspect.HorizontalOptions = LayoutOptions.CenterAndExpand;
            lblInspect.Margin = new Thickness(0, 15, 0, 0);

            lblRedDot = new Label();
            lblRedDot.Text = ".";
            lblRedDot.TextColor = Color.FromHex("#FF1600");
            lblRedDot.FontSize = 40;
            lblRedDot.Margin = new Thickness(0, 7, 0, 0);


            fdaLogo = new Image();
            fdaLogo.Source = "FDALogo.png";
            fdaLogo.WidthRequest = 350;
            fdaLogo.HeightRequest = 100;

            //lblInspect.HorizontalOptions = LayoutOptions.CenterAndExpand;
            //fdaLogo.Margin = new Thickness(0, 15, 0, 0);

            txtUserName = new Entry();
            txtUserName.Placeholder = "User name";
            txtUserName.Text = "tford@fda.gov";
            txtUserName.WidthRequest = 470;
            txtUserName.HeightRequest = 50;
            txtUserName.Margin = new Thickness(5, 0, 5, 0);

            txtPassword = new Entry();
            txtPassword.Placeholder = "Password";
            txtPassword.IsPassword = true;
            txtPassword.Text = "password";
            txtPassword.WidthRequest = 350;
            txtPassword.HeightRequest = 50;
            txtPassword.Margin = new Thickness(5, 0, 5, 0);

            cmdLogin = new Button();
            cmdLogin.WidthRequest = 470;
            cmdLogin.HeightRequest = 50;
            cmdLogin.Text = "Log in";
            cmdLogin.BackgroundColor = Color.FromHex("#3693FF");
            cmdLogin.TextColor = Color.White;
            cmdLogin.CornerRadius = 5;
            cmdLogin.FontSize = 20;
            cmdLogin.FontAttributes = FontAttributes.Bold;
            cmdLogin.Margin = new Thickness(5, 0, 5, 0);
            cmdLogin.Clicked += CmdLogin_Clicked;

            swtchRememberMe = new Switch();
            swtchRememberMe.Margin = new Thickness(5, 0, 5, 0);

            lblRememebrMe = new Label();
            lblRememebrMe.Text = "Remember me";
            lblRememebrMe.TextColor = Color.White;
            //lblRememebrMe.FontSize = 20;

            cmdForgotPassword = new Button();
            cmdForgotPassword.Text = "Forgot Password";
            cmdForgotPassword.TextColor = Color.White;
            cmdForgotPassword.HorizontalOptions = LayoutOptions.EndAndExpand;
            //cmdForgotPassword.FontSize = 20;

            touchImage = new Image();
            touchImage.Source = "fingerprint.png";

            cmdEnableTouch = new Button();
            cmdEnableTouch.Text = "Enable Login with Touch ID";
            cmdEnableTouch.TextColor = Color.White;
            //cmdEnableTouch.FontSize = 20;

            cmdRegistration = new Button();
            cmdRegistration.Text = "Registration";
            cmdRegistration.TextColor = Color.White;
            //cmdRegistration.FontSize = 20;
            cmdRegistration.HorizontalOptions = LayoutOptions.EndAndExpand;

            Content = new StackLayout
            {
                
                Children = {
                    new StackLayout{
                        VerticalOptions = LayoutOptions.Start,
                        HorizontalOptions = LayoutOptions.FillAndExpand,
                        Orientation = StackOrientation.Horizontal,
                        BackgroundColor = Color.FromHex("#025085"),
                        HeightRequest = 60,
                        Children=
                        {
                            
                            new StackLayout{
                                HorizontalOptions = LayoutOptions.CenterAndExpand,
                                Orientation = StackOrientation.Horizontal,
                                Children = {
                                    inspectIcon,
                                    lblInspect,
                                    lblRedDot
                                }
                            }

                        }
                    },

                new StackLayout
                {
                Orientation = StackOrientation.Vertical,
                VerticalOptions = LayoutOptions.CenterAndExpand,
                HorizontalOptions = LayoutOptions.CenterAndExpand,

                Children = {
                new StackLayout
                    {
                        Padding = 50,
                        Children={
                            fdaLogo,
                                    activityIndicator
                        }
                    },
                new StackLayout
                {
                    Orientation = StackOrientation.Vertical,
                    VerticalOptions = LayoutOptions.CenterAndExpand,
                    HorizontalOptions = LayoutOptions.CenterAndExpand,

                    Children = {
                            new StackLayout
                            {
                                Children = {
                                txtUserName
                                }
                            },
                            new StackLayout
                            {
                                Children = {
                                txtPassword
                                }

                    },
                    new StackLayout
                    {

                        Orientation = StackOrientation.Vertical,
                                Padding = new Thickness(0,20,0,5),
                        Children = {
                            cmdLogin

                        }
                    },
                    new StackLayout{
                         Orientation = StackOrientation.Horizontal,
                         FlowDirection =  FlowDirection.LeftToRight,
                                Padding = new Thickness(0,0,5,0),
                         Children = {

                                    swtchRememberMe,
                                    new StackLayout
                                    {
                                        Padding=new Thickness(0,10,0,0),
                                        Children={
                                            lblRememebrMe

                                        }
                                    }
                                    ,cmdForgotPassword
                                    /*,new StackLayout
                                    {
                                        FlowDirection = FlowDirection.RightToLeft,
                                        Children = {
                                            cmdForgotPassword
                                        }
                                    }*/
                         }
                    },
                            new StackLayout
                            {
                                Padding = 20,
                                Orientation = StackOrientation.Horizontal,
                                FlowDirection = FlowDirection.LeftToRight,
                                Children = {
                                    touchImage,
                                    cmdEnableTouch,
                                    cmdRegistration
                                }
                            }
                }
                }
                }
                    }
                }
            };
        }
    }
}

