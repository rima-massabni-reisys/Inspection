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
    public class AssessmentManager : IAssessmentManager
    {
        public AssessmentManager()
        {

        }

        #region Interface Implementation

        public List<AssessmentMetadataEntity> GetListOfAllAssignedAssessments()
        {

            return GetListOfAllAssignedAssessmentsFromDevice();
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
            List<string> assessmentResponseFromServer = GetListOfAllAssignedAssessmentsFromServerAPICall();

            List<AssessmentMetadataEntity> entities = new List<AssessmentMetadataEntity>();

            foreach (string assessment in assessmentResponseFromServer)
            {
                AssessmentMetadataEntity entity = JsonConvert.DeserializeObject<AssessmentMetadataEntity>(assessment);
                entities.Add(entity);

                //Store assessments on the device
                StoreAssessmentsOnDevice(assessment, entity);
            }

            return entities;

        }

        public string GetAssignedAssessment(int id)
        {
            throw new NotImplementedException();
        }

        #endregion

        private void StoreAssessmentsOnDevice(string assessmentMetadataFromServer, AssessmentMetadataEntity assessmentMetadata)
        {
            //store or update. If update should bubble some kind of event for tracking.
            DependencyService.Get<IKalectDependencyServices>().SaveAssessmentsMetadata(assessmentMetadataFromServer, assessmentMetadata.AssessmentTrackingNumber.ToString(), FileFolderUtility.GetAssessmentFileName(assessmentMetadata.AssessmentTrackingNumber.ToString()));
        }

        private List<string> LoadAssessmentFromDevice()
        {
            return DependencyService.Get<IKalectDependencyServices>().LoadAssessmentsMetadataFromDevice();
        }



        #region webAPI calls

        private List<string> GetListOfAllAssignedAssessmentsFromServerAPICall()
        {
            var client = new HttpClient();
            //var response = client.GetStringAsync("http://handbookwebapi.azurewebsites.net/api/kalectMetadata").Result;
            var response = client.GetStringAsync("http://hsa-is2-uat8.amer.reisystems.com/handbookwebapi/api/kalectMetadata").Result;
            List<string> assessmentResponse = JsonConvert.DeserializeObject<List<string>>(response);

            return assessmentResponse;

        }

        private string GetAssignedAssessmentFromServer(int id)
        {
            throw new NotImplementedException();
        }

        #endregion


    }
}
