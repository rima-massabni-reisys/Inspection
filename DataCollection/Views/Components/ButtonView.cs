using System;

using Xamarin.Forms;

namespace DataCollection.Views.Components
{
    public class ButtonView : ContentView
    {
        Button btn = new Button();
        public string text { get; set; } 
        public ButtonView()
        {
            btn.Clicked += Btn_Clicked;
            Content = btn;
        }

        private void Btn_Clicked(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }
    }
}

