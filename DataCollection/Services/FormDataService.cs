using System;
using DataCollection.Utilities;

namespace DataCollection.Services
{
    public static class FormDataService
    {
        static string _formData;
        public static string FormData
        {
            get{
                return _formData;
            }
            set{
                _formData = value;
            }
        }


        public static void UpdateFormDataValue(string path, object value)
        {
            FormData = Utilities.Utility.SetFormDataValue(FormData, path, value).ToString();           
        }

    }
}
