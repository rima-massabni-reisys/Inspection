using System;
using DataCollection.Entities;
using DataCollection.Services;
using Xamarin.Forms;

namespace DataCollection.Views.Components
{
    public class LabelEditorView : ContentView
    {
        void DataEntry_Completed(object sender, EventArgs e)
        {
            //string insaneValue = dataEntry.Text;
            FormDataService.UpdateFormDataValue(editorPath, dataEntry.Text);
        }


        LabelEditorViewModel lblEditorModel;

        LabelView lblText;
        Editor dataEntry;
        string editorPath;
        BoxView lineSeparator;
        public LabelEditorView(Component c, string formData, Mode mode = Mode.Edit)
        {
            editorPath = c.path;
            var dataEntryValue = Utilities.Utility.GetFormDataValue(formData, editorPath);
            lblEditorModel = new LabelEditorViewModel(c.text, dataEntryValue.ToString());

            lineSeparator = new BoxView();
            lineSeparator.HeightRequest = 1;
            lineSeparator.Color = Color.FromHex("#EAEAEA");
            lineSeparator.Margin = new Thickness(0, 25, 0, 0);

            if (mode == Mode.Edit)
            {
            
            BindingContext = lblEditorModel;
 
            dataEntry = new Editor();
            //dataEntry.WidthRequest = 200;
            dataEntry.HeightRequest = 150;
            dataEntry.BackgroundColor = Color.White;
            dataEntry.Keyboard = Keyboard.Default;

            dataEntry.SetBinding(Editor.TextProperty, "EditorText");
            dataEntry.BindingContext = lblEditorModel;
            dataEntry.Completed += DataEntry_Completed;
            lblText = new LabelView(lblEditorModel.LabelText);

            


            var editorLayout = new StackLayout
            {
                BackgroundColor = Color.FromHex("#EAEAEA"),
                Padding = 1,
                Children ={
                    dataEntry
                }
            };

            Content = new StackLayout
            {
                Padding = new Thickness(25, 10, 25, 0),
                Children ={
                lblText,
                editorLayout,
                    lineSeparator
                }
            };
        }
            else {

                lblText = new LabelView(lblEditorModel.LabelText +":");
                LabelView lblAnswer = new LabelView(lblEditorModel.EditorText);
                Content = new StackLayout
                {
                    Padding = new Thickness(25, 25, 25, 0),
                    Orientation = StackOrientation.Vertical,
                    Children ={
                         new StackLayout
                            {
                                Orientation = StackOrientation.Horizontal,
                                HorizontalOptions = LayoutOptions.StartAndExpand,
                                Children =
                                {
                                lblText,
                                lblAnswer
                            }
                        }, new StackLayout
                    {
                        Children=
                        {
                    lineSeparator
                            }
                }
                    }
                };
            }
        }
    }
}

