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

        public YesNoSwitchView(Component c, string formData)
        {
            switchView = new SwitchView(c, formData);

            question = new LabelView(c.text);
            this.Padding = new Thickness(5, 20, 0, 0);

            Content = new ScrollView
            {
                Content = new StackLayout
                {
                    Orientation = StackOrientation.Horizontal,
                    Children = {
                        question,
                        switchView
        
                }
                }
            };
        }

    }
}

