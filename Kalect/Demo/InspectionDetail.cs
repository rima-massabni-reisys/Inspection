using System;

using Xamarin.Forms;

namespace Kalect.Demo
{
    public class InspectionDetail : ContentPage
    {
        public InspectionDetail()
        {
            Content = new StackLayout
            {
                Children = {
                    new Label { Text = "Hello ContentPage" }
                }
            };
        }
    }
}

