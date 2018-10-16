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

        public YesNoSwitchView(Component c, string formData, Mode mode = Mode.Edit)
        {
            lineSeparator = new BoxView();
            lineSeparator.HeightRequest = 1;
            lineSeparator.Color = Color.FromHex("#EAEAEA");

            switchView = new SwitchView(c, formData,mode);

            question = new LabelView(c.text);



            if (mode == Mode.Edit) {
                this.Padding = new Thickness(25, 20, 25, 0);
                lineSeparator.Margin = new Thickness(0, 25, 0, 0);
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
            else {
                lineSeparator.Margin = new Thickness(0, 15, 0, 0);
                Content = new ScrollView
                {
                    Content = new StackLayout
                    {
                        Orientation = StackOrientation.Vertical,
                        Padding = new Thickness(25, 25, 25, 0),
                        Children = {
                             new StackLayout
                            {
                                Orientation = StackOrientation.Horizontal,
                                HorizontalOptions = LayoutOptions.StartAndExpand,
                                Children =
                                {
                                    question,
                                    switchView
                                }
                            },
                  
                                            new StackLayout
                                            {
                         
                                                Children =
                                                {
                                                    lineSeparator
                                                }
                                            }
                    }
                    }
                };
            }
        }

    }
}

