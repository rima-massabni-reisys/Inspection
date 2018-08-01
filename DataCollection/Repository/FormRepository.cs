using System;
using System.IO;
using System.Reflection;
using DataCollection.Data.CleaningAndDisinfectionProducts;
using DataCollection.DependencyServices;
using DataCollection.Repository.DataObjects;
using Newtonsoft.Json;
using Xamarin.Forms;

namespace DataCollection.Repository
{
    public class FormRepository: IFormRepository
    {
        public FormRepository()
        {
        }

        public FormInstanceData GetFormInstance(string trackingNumber, string friendlyName)
        {
            FormInstanceData formInstanceData = new FormInstanceData();
            var assembly = IntrospectionExtensions.GetTypeInfo(typeof(FormModelData)).Assembly;
            string savedFormData = string.Empty;
            string FormModel = string.Empty;
            if (friendlyName.Equals("Pullets"))
            {
                //formModel
                Stream stream = assembly.GetManifestResourceStream("DataCollection.Data.Pullets.FormModel.json");
                using (var reader = new System.IO.StreamReader(stream))
                {
                    formInstanceData.FormModel = reader.ReadToEnd();
                }

                //formdata
                savedFormData = DependencyService.Get<ISaveAndLoad>().LoadText(trackingNumber, friendlyName);

                if (string.IsNullOrEmpty(savedFormData))
                {
                    stream = assembly.GetManifestResourceStream("DataCollection.Data.Pullets.FormData.json");
                    using (var reader = new System.IO.StreamReader(stream))
                    {
                        formInstanceData.FormData = reader.ReadToEnd();
                    }
                }
                else
                {
                    formInstanceData.FormData = savedFormData;
                }

                //ValidationSchema
                stream = assembly.GetManifestResourceStream("DataCollection.Data.Pullets.ValidationSchema.json");
                using (var reader = new System.IO.StreamReader(stream))
                {
                    formInstanceData.ValidationSchema = reader.ReadToEnd();
                }

            }
            else if (friendlyName.Equals("Biosecurity"))
            {
                //formModel
                Stream stream = assembly.GetManifestResourceStream("DataCollection.Data.Biosecurity.FormModel.json");
                using (var reader = new System.IO.StreamReader(stream))
                {
                    formInstanceData.FormModel = reader.ReadToEnd();
                }

                //formdata
                savedFormData = DependencyService.Get<ISaveAndLoad>().LoadText(trackingNumber,friendlyName);
                if (string.IsNullOrEmpty(savedFormData))
                {
                    stream = assembly.GetManifestResourceStream("DataCollection.Data.Biosecurity.FormData.json");
                    using (var reader = new System.IO.StreamReader(stream))
                    {
                        formInstanceData.FormData = reader.ReadToEnd();
                    }
                }
                else{
                    formInstanceData.FormData = savedFormData;
                }

                //ValidationSchema
                stream = assembly.GetManifestResourceStream("DataCollection.Data.Biosecurity.ValidationSchema.json");
                using (var reader = new System.IO.StreamReader(stream))
                {
                    formInstanceData.ValidationSchema = reader.ReadToEnd();
                }
            }
            else if (friendlyName.Equals("RodentsFliesOtherPestControl"))
            {
                //formModel
                Stream stream = assembly.GetManifestResourceStream("DataCollection.Data.RodentFliesPestControl.FormModel.json");
                using (var reader = new System.IO.StreamReader(stream))
                {
                    formInstanceData.FormModel = reader.ReadToEnd();
                }

                //formData
                savedFormData = DependencyService.Get<ISaveAndLoad>().LoadText(trackingNumber,friendlyName);

                if (string.IsNullOrEmpty(savedFormData))
                {
                    stream = assembly.GetManifestResourceStream("DataCollection.Data.RodentFliesPestControl.FormData.json");
                    using (var reader = new System.IO.StreamReader(stream))
                    {
                        formInstanceData.FormData = reader.ReadToEnd();
                    }
                }
                else{
                    formInstanceData.FormData = savedFormData;
                }
                //ValidationSchema
                stream = assembly.GetManifestResourceStream("DataCollection.Data.RodentFliesPestControl.ValidationSchema.json");
                using (var reader = new System.IO.StreamReader(stream))
                {
                    formInstanceData.ValidationSchema = reader.ReadToEnd();
                }

            }
            else if (friendlyName.Equals("CleaningAndDisinfectionProducts"))
            {
                //formModel

                Stream stream = assembly.GetManifestResourceStream("DataCollection.Data.CleaningAndDisinfectionProducts.FormModel.json");
                using (var reader = new System.IO.StreamReader(stream))
                {
                    formInstanceData.FormModel = reader.ReadToEnd();
                }
                //formInstanceData.FormModel = CDP.FormModel;

                //formData
                savedFormData = DependencyService.Get<ISaveAndLoad>().LoadText(trackingNumber,friendlyName);

                if (string.IsNullOrEmpty(savedFormData))
                {
                    stream = assembly.GetManifestResourceStream("DataCollection.Data.CleaningAndDisinfectionProducts.FormData.json");
                    using (var reader = new System.IO.StreamReader(stream))
                    {
                        formInstanceData.FormData = reader.ReadToEnd();
                    }
                }
                else{
                    formInstanceData.FormData = savedFormData;
                }

                //formInstanceData.FormData = CDP.FormData;

                //ValidationSchema
                stream = assembly.GetManifestResourceStream("DataCollection.Data.CleaningAndDisinfectionProducts.ValidationSchema.json");
                using (var reader = new System.IO.StreamReader(stream))
                {
                    formInstanceData.ValidationSchema = reader.ReadToEnd();
                }
                //formInstanceData.ValidationSchema = CDP.ValidationSchema;
            }
            else if (friendlyName.Equals("RefrigerationProcedures"))
            {
                //formmodel
                Stream stream = assembly.GetManifestResourceStream("DataCollection.Data.RefrigerationProcedures.FormModel.json");
                using (var reader = new System.IO.StreamReader(stream))
                {
                    formInstanceData.FormModel = reader.ReadToEnd();
                }


                //formdata
                savedFormData = DependencyService.Get<ISaveAndLoad>().LoadText(trackingNumber,friendlyName);

                if (string.IsNullOrEmpty(savedFormData))
                {
                    stream = assembly.GetManifestResourceStream("DataCollection.Data.RefrigerationProcedures.FormData.json");
                    using (var reader = new System.IO.StreamReader(stream))
                    {
                        formInstanceData.FormData = reader.ReadToEnd();
                    }
                }else{
                    formInstanceData.FormData = savedFormData;
                }

                //ValidationSchema
                stream = assembly.GetManifestResourceStream("DataCollection.Data.RefrigerationProcedures.ValidationSchema.json");
                using (var reader = new System.IO.StreamReader(stream))
                {
                    formInstanceData.ValidationSchema = reader.ReadToEnd();
                }
            }
            return formInstanceData;
        }
    }
}
