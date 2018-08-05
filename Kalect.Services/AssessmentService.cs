using System;
using System.Collections.Generic;
using System.Net.Http;
using Kalect.Services.Entities;
using Kalect.Services.Interfaces;
using Kalect.Services.Utilities;
using Newtonsoft.Json;
using Xamarin.Forms;

namespace Kalect.Services
{
    public class AssessmentService
    {
        /*
         * Get List of all assessments from the server
         * Each Assessment contains 1 assessmentMetadata and List of Forms Entity
         * Each FormEntity contain 1 FormModel, 1 FormData, 1 ValidationSchema
         * SaveAssessmentMetadataOnDevice - Creates Folder using AssessmentTrackingNumber and stores assessmentmetadata in the root
         * SaveFormsOnDevice - Loop through each FormEntity, create sub-folder based on friendlyName. Store formsmodel,formdata,validationschema in respective folders
         */

        public AssessmentService()
        {
        }

        public List<AssessmentMetadataEntity> GetListOfAllAssignedAssessmentsFromDevice()
        {
            List<AssessmentMetadataEntity> entities = new List<AssessmentMetadataEntity>();

            List<string> assessmentsFromDevice = LoadAssessmentFromDevice();

            foreach (string assessment in assessmentsFromDevice)
            {
                AssessmentMetadataEntity entity = JsonConvert.DeserializeObject<AssessmentMetadataEntity>(assessment);
                entities.Add(entity);

            }


            return entities;
        }


        public List<AssessmentMetadataEntity> GetListOfAllAssignedAssessmentsFromServer()
        {
            List<AssessmentEntity> assessmentResponseFromServer = GetListOfAllAssignedAssessmentsFromServerAPICall();

            List<AssessmentMetadataEntity> metadataEntities = new List<AssessmentMetadataEntity>();

            foreach (AssessmentEntity entity in assessmentResponseFromServer)
            {
                AssessmentMetadataEntity metadataEntity = JsonConvert.DeserializeObject<AssessmentMetadataEntity>(entity.AssessmentMetadata);

                //Store assessments metadata on the device
                StoreAssessmentsOnDevice(entity.AssessmentMetadata, metadataEntity);
                StoreFormsOnDevice(metadataEntity, entity.Forms);
                metadataEntities.Add(metadataEntity);

            }

            return metadataEntities;

        }

        #region dependency Service Calls

        //SaveAssessmentMetadataOnDevice - Creates Folder using AssessmentTrackingNumber and stores assessmentmetadata in the root
        private void StoreAssessmentsOnDevice(string assessmentMetadataFromServer, AssessmentMetadataEntity assessmentMetadata)
        {
            //store or update. If update should bubble some kind of event for tracking.
            DependencyService.Get<IKalectDependencyServices>().SaveAssessmentsMetadataOnDevice(assessmentMetadataFromServer, assessmentMetadata.AssessmentTrackingNumber.ToString(), FileFolderUtility.GetAssessmentFileName(assessmentMetadata.AssessmentTrackingNumber.ToString()));
        }

        public void UpdateAssessmentOnDevice(string assessmentMetadata, string trackingNumber)
        {
            DependencyService.Get<IKalectDependencyServices>().SaveAssessmentsMetadataOnDevice(assessmentMetadata, trackingNumber, FileFolderUtility.GetAssessmentFileName(trackingNumber));
        }

        //SaveFormsOnDevice - Loop through each FormEntity, create sub-folder based on friendlyName. Store formsmodel,formdata,validationschema in respective folders
        private void StoreFormsOnDevice(AssessmentMetadataEntity assessmentMetadata, List<FormEntity> formEntities)
        {
            //store or update. If update should bubble some kind of event for tracking.
            //DependencyService.Get<IKalectDependencyServices>().SaveFormsOnDevice(fileContent, assessmentMetadata.AssessmentTrackingNumber.ToString(),  FileFolderUtility.GetAssessmentFileName(assessmentMetadata.AssessmentTrackingNumber.ToString()));
            foreach(FormEntity formEntity in formEntities)
            {
                //SaveFormModel
                DependencyService.Get<IKalectDependencyServices>().SaveFormsOnDevice(formEntity.FormModel, assessmentMetadata.AssessmentTrackingNumber.ToString(), formEntity.FriendlyName, "FormModel");

                //SaveFormData
                DependencyService.Get<IKalectDependencyServices>().SaveFormsOnDevice(formEntity.FormData, assessmentMetadata.AssessmentTrackingNumber.ToString(), formEntity.FriendlyName, "FormData");

                //SaveValidationSchema
                DependencyService.Get<IKalectDependencyServices>().SaveFormsOnDevice(formEntity.ValidationSchema, assessmentMetadata.AssessmentTrackingNumber.ToString(), formEntity.FriendlyName, "ValidationSchema");
            }
        }

        private List<string> LoadAssessmentFromDevice()
        {
            return DependencyService.Get<IKalectDependencyServices>().LoadAssessmentsMetadataFromDevice();
        }

        #endregion



        #region webAPI calls

        private List<AssessmentEntity> GetListOfAllAssignedAssessmentsFromServerAPICall()
        {
            var client = new HttpClient();
            var response = client.GetStringAsync("http://handbookwebapi.azurewebsites.net/api/assessment").Result;
            //var response = client.GetStringAsync("http://hsa-is2-uat8.amer.reisystems.com/handbookwebapi/api/kalectMetadata").Result;
            List<AssessmentEntity> assessmentResponse = JsonConvert.DeserializeObject<List<AssessmentEntity>>(response);

            return assessmentResponse;

        }

    #endregion

}


}
