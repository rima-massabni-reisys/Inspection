﻿using System;
using Xamarin.Forms;

namespace DataCollection.Entities
{
    public class FormInstance
    {
        public string FriendlyName { get; set; }
        public FormModel FormModelView { get; set; }
        public string FormData { get; set; }
        //public Layout FormModelLayout { get; set; }
        public string ValidationSchema { get; set; }
    }
}
