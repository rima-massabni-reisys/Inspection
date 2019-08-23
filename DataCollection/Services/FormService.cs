using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using DataCollection.Entities;
using DataCollection.Repository;
using DataCollection.Repository.DataObjects;
using Newtonsoft.Json;
using Xamarin.Forms;

namespace DataCollection.Services
{
    public class FormService
    {
        FormRepository _formRepository;
        LayoutGenerator _layoutGenerator;
        public FormService()
        {
            _formRepository = new FormRepository();
            _layoutGenerator = new LayoutGenerator();
        }

        public FormInstance GetFormInstance(string trackingNumber, string friendlyName)
        {
            FormInstanceData formInstanceData = new FormInstanceData();
            formInstanceData = _formRepository.GetFormInstance(trackingNumber, friendlyName);

            FormInstance formInstance = new FormInstance();
            formInstance.FormModelView = JsonConvert.DeserializeObject<FormModel>(formInstanceData.FormModel);
            formInstance.FormData = formInstanceData.FormData;
            formInstance.ValidationSchema = formInstanceData.ValidationSchema;
            formInstance.WebAttachments = formInstanceData.WebAttachments;

            return formInstance;
        }

        public Layout GenerateLayout(FormModel formModelView, string formData)
        {
            return _layoutGenerator.GenerateLayout(formModelView, formData);
        }

        public List<ContentPage>GenerateCarouselLayout(FormModel formModelView, string formData)
        {
            return _layoutGenerator.GenerateContentPagesForCarousel(formModelView, formData);
        }

        public Layout GenerateLayoutForSelectedFormGroup(FormGroup fg, string formData, string webAttachments, string assessmentTrackingNumber)
        {
            Switch temp = null;
            return _layoutGenerator.GenerateLayoutForSelectedFormGroup(fg, formData, webAttachments, assessmentTrackingNumber, ref temp);
        }

        public Layout GenerateLayoutForSelectedFormGroup(FormGroup fg, string formData, string webAttachments, string assessmentTrackingNumber, ref Switch keySwitch, string keySwitchName = null)
        {
            return _layoutGenerator.GenerateLayoutForSelectedFormGroup(fg, formData, webAttachments, assessmentTrackingNumber, ref keySwitch, keySwitchName);
        }

        public List<FormInstance> GetAllForms(string trackingNumber)
        {
            List<FormInstance> formInstances = new List<FormInstance>();
            List<FormInstanceData> allFormInstances =_formRepository.GetAllForms(trackingNumber);

            foreach(FormInstanceData formInstanceData in allFormInstances)
            {
                FormInstance formInstance = new FormInstance();
                formInstance.FriendlyName = formInstanceData.FriendlyName;
                formInstance.FormModelView = JsonConvert.DeserializeObject<FormModel>(formInstanceData.FormModel);
                formInstance.FormData = formInstanceData.FormData;
                formInstance.ValidationSchema = formInstanceData.ValidationSchema;
                formInstance.WebAttachments = formInstanceData.WebAttachments;

                formInstances.Add(formInstance);
            }

            return formInstances;
        }

        public async Task SyncFormData(Guid assessmentId, string formData)
        {
            await _formRepository.SyncFormData(assessmentId, formData);

        }

        public async Task SyncMediaToOneDrive(string trackingNumber)
        {
            await _formRepository.SyncMediaToOneDrive(trackingNumber);
        }

    }
}
