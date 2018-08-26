using System;
namespace DataCollection.Repository.DataObjects
{
    public class FormInstanceData
    {
        public string FriendlyName { get; set; }
        public string FormModel { get; set; }
        public string FormData { get; set; }
        public string ValidationSchema { get; set; }
    }

    public enum FormFiles
    {
        FormModel,
        FormData,
        ValidationSchema
    }

}
