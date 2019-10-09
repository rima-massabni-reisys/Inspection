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
            if (Convert.ToBoolean(agree))
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

            this.BackgroundImageSource = "Background1x.png";

            BackgroundColor = Color.FromHex("#3F51B5");

            inspectIcon = new Image();
            inspectIcon.Source = "InspectIcon.png";
            //inspectIcon.HorizontalOptions = LayoutOptions.CenterAndExpand;
            inspectIcon.Margin = new Thickness(0, 5, 0, 0);

            lblInspect = new Label();
            lblInspect.Text = "Inspect";
            lblInspect.TextColor = Color.White;
            lblInspect.FontSize = 30;
            //lblInspect.HorizontalOptions = LayoutOptions.CenterAndExpand;
            lblInspect.Margin = new Thickness(0, 10, 0, 0);

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
            txtUserName.Margin = new Thickness(7, 0, 7, 0);

            txtPassword = new Entry();
            txtPassword.Placeholder = "Password";
            txtPassword.IsPassword = true;
            txtPassword.Text = "password";
            txtPassword.WidthRequest = 350;
            txtPassword.HeightRequest = 50;
            txtPassword.Margin = new Thickness(7, 0, 7, 0);

            cmdLogin = new Button();
            cmdLogin.WidthRequest = 470;
            cmdLogin.HeightRequest = 50;
            cmdLogin.Text = "Log in";
            cmdLogin.BackgroundColor = Color.FromHex("#3693FF");
            cmdLogin.TextColor = Color.White;
            cmdLogin.CornerRadius = 5;
            cmdLogin.FontSize = 20;
            cmdLogin.FontAttributes = FontAttributes.Bold;
            cmdLogin.Margin = new Thickness(7, 0, 7, 0);
            cmdLogin.Clicked += CmdLogin_Clicked;

            swtchRememberMe = new Switch();
            swtchRememberMe.Margin = new Thickness(5, 0, 2, 0);
            swtchRememberMe.BackgroundColor = Color.Transparent;

            lblRememebrMe = new Label();
            lblRememebrMe.Text = "Remember me";
            lblRememebrMe.TextColor = Color.White;
            lblRememebrMe.BackgroundColor = Color.Transparent;
            lblRememebrMe.FontSize = 15;

            cmdForgotPassword = new Button();
            cmdForgotPassword.Text = "Forgot Password";
            cmdForgotPassword.TextColor = Color.White;
            cmdForgotPassword.HorizontalOptions = LayoutOptions.EndAndExpand;
            cmdForgotPassword.FontSize = 12;
            cmdForgotPassword.BackgroundColor = Color.Transparent;

            touchImage = new Image();
            touchImage.Margin = new Thickness(5, 0, 2, 0);
            touchImage.Source = "fingerprint.png";
            touchImage.HorizontalOptions = LayoutOptions.Start;

            cmdEnableTouch = new Button();
            cmdEnableTouch.Text = "Enable Login with Touch ID";
            cmdEnableTouch.TextColor = Color.White;
            cmdEnableTouch.FontSize = 12;
            cmdEnableTouch.BackgroundColor = Color.Transparent;

            cmdRegistration = new Button();
            cmdRegistration.Text = "Registration";
            cmdRegistration.TextColor = Color.White;
            cmdRegistration.FontSize = 12;
            cmdRegistration.HorizontalOptions = LayoutOptions.EndAndExpand;
            cmdRegistration.BackgroundColor = Color.Transparent;

            StackLayout PageLayout = new StackLayout();

            PageLayout = new StackLayout
            {

                Children =
                {
                    new StackLayout{
                        VerticalOptions = LayoutOptions.Start,
                        HorizontalOptions = LayoutOptions.FillAndExpand,
                        Orientation = StackOrientation.Horizontal,
                        BackgroundColor = Color.FromHex("#025085"),
                        HeightRequest = 50,
                        Children=
                        {

                            new StackLayout{
                                HorizontalOptions = LayoutOptions.CenterAndExpand,
                                Orientation = StackOrientation.Horizontal,
                                VerticalOptions = LayoutOptions.End,
                                //Margin = new Thickness(20,0,0,0),
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
                        Padding = 40,
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
                                Padding = new Thickness(0,15,0,4),
                        Children = {
                            cmdLogin

                        }
                    },
                            new StackLayout{
                               Orientation = StackOrientation.Horizontal,
                               FlowDirection =  FlowDirection.LeftToRight,
                                Padding = new Thickness(8,0,8,0),
                               Children = {

                                    swtchRememberMe,
                                    new StackLayout
                                    {
                                        Padding=new Thickness(5,10,8,0),
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
                            new StackLayout{
                               Orientation = StackOrientation.Horizontal,
                               FlowDirection =  FlowDirection.LeftToRight,
                               Padding = new Thickness(8,0,8,0),
                               Children =
                                {

                                    touchImage,
                                    new StackLayout
                                    {
                                        //Padding=new Thickness(5,5,8,0),
                                        Children=
                                        {
                                            cmdEnableTouch

                                        }
                                    }
                                    ,cmdRegistration

                                }
                            },
                            
                            //new StackLayout
                           // {
                               // Padding = new Thickness(5,0,10,0),
                               // Orientation = StackOrientation.Horizontal,
                               // FlowDirection = FlowDirection.LeftToRight,
                               // Children = {
                                //    touchImage,
                                 //   cmdEnableTouch,
                                //    cmdRegistration
                               // }
                            //}
                }
                }
                }
                    }
                }
            };



            Content = new ScrollView
            {
                Content = PageLayout
            };
        }
    }
}

