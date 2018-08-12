using System;

using Xamarin.Forms;
using DataCollection.Views.Components;
using DataCollection.Entities;

namespace DataCollection.Views.Components
{
    public class YesNoSwitchView : ContentView
    {
        //public variables accrssible
        public string QuestionText { get; set; }

        SwitchView switchView;
        LabelView question;
        BoxView lineSeparator;

        public YesNoSwitchView(Component c, string formData)
        {
            lineSeparator = new BoxView();
            lineSeparator.HeightRequest = 1;
            lineSeparator.Color = Color.FromHex("#EAEAEA");
            lineSeparator.Margin = new Thickness(0, 25, 0, 0);
            switchView = new SwitchView(c, formData);

            question = new LabelView(c.text);
            this.Padding = new Thickness(25, 20, 25, 0);

            Content = new ScrollView
            {
                Content = new StackLayout
                {
                    Orientation = StackOrientation.Vertical,
                    Children = {
                        question,
                        switchView,
                        lineSeparator
                    }
                }
            };
        }

    }
}

