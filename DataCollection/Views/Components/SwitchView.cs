﻿using System;
using DataCollection.Entities;
using DataCollection.Services;
using Xamarin.Forms;

namespace DataCollection.Views.Components
{
    public class SwitchView : ContentView
    {
        Switch sw;
        public string SelectedAnswerValue { get; set; }
        LabelView lblAnswer;
        SwitchViewModel switchViewModel;

        string path;

        public SwitchView(Component c, string formData)
        {
            path = c.path;
            bool switchValue = false;
            //read formData based on the c.path
            var switchValueFormData = Utilities.Utility.GetFormDataValue(formData, path);
            //if (switchValueFormData.ToString().ToUpper().Equals("FALSE"))
            if (switchValueFormData.ToString().ToUpper().Equals("NO") || switchValueFormData.ToString().ToUpper().Equals("FALSE"))
                switchValue = false;
            else
                switchValue = true;
            
            sw = new Switch();
            lblAnswer= new LabelView();
            switchViewModel = new SwitchViewModel(switchValue);
            BindingContext = switchViewModel;

            sw.SetBinding(Switch.IsToggledProperty, "SwitchValue");
            sw.BindingContext = switchViewModel;

            //Switch command
            sw.Toggled += sw_Toggled;

            Content = new ScrollView
            {
                Content = new StackLayout
                {
                    Children = {                      
                        sw,lblAnswer

                }
                }
            };
        }
        private void sw_Toggled(object sender, ToggledEventArgs e)
        {
            //lblAnswer.lbl.Text = e.Value.ToString();
            string val = "no";
            if(e.Value)
            {
                val = "yes";
            }
            else
            {
                val = "no";
            }
            //FormDataService.UpdateFormDataValue(path, Convert.ToBoolean(e.Value));
            FormDataService.UpdateFormDataValue(path, val);
        }
    }
}

