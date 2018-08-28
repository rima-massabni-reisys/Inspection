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
            WeatherService weatherService = new WeatherService();

            List<string> assessmentsFromDevice = LoadAssessmentFromDevice();

            //bool isInternetAvailable = true;

            foreach (string assessment in assessmentsFromDevice)
            {
                AssessmentMetadataEntity entity = JsonConvert.DeserializeObject<AssessmentMetadataEntity>(assessment);

                try
                {
                    //if (isInternetAvailable)
                    //{
                        //send online.offline param to the method
                        entity.Weather = weatherService.GetWeather(entity.OrganizationCityState);
                        entity.WeatherIcon = GetWeatherIcon(entity.Weather);
                      //  isInternetAvailable = true;
                    //}
                    //else
                    //{
                    //    entity.Weather = "-";
                    //    entity.WeatherIcon = "NoWeather.png";
                    //}
                    
                }
                catch
                {
                    //set this to false so it does not keep hitting the server again and again
                    //isInternetAvailable = false;
                    entity.Weather = "-";
                    entity.WeatherIcon = "NoWeather.png";
                }
                entities.Add(entity);

            }


            return entities;
        }


        public List<AssessmentMetadataEntity> GetListOfAllAssignedAssessmentsFromServer()
        {
            
            List<AssessmentEntity> assessmentResponseFromServer = GetListOfAllAssignedAssessmentsFromServerAPICall();

            List<AssessmentMetadataEntity> metadataEntities = new List<AssessmentMetadataEntity>();

            WeatherService weatherService = new WeatherService();
            bool isWeatherServiceAvailable = true;

            foreach (AssessmentEntity entity in assessmentResponseFromServer)
            {
                AssessmentMetadataEntity metadataEntity = JsonConvert.DeserializeObject<AssessmentMetadataEntity>(entity.AssessmentMetadata);

                //create the map url when data is pulled the first time.
                metadataEntity.MapUrl = "http://maps.apple.com/?daddr=" + metadataEntity.OrganizationAddress;

                try
                {
                    if (isWeatherServiceAvailable)
                    {
                        //send online.offline param to the method
                        metadataEntity.Weather = weatherService.GetWeather(metadataEntity.OrganizationCityState);
                        metadataEntity.WeatherIcon = GetWeatherIcon(metadataEntity.Weather);
                        //entity.MapUrl = "http://maps.apple.com/?daddr=" + entity.OrganizationAddress; //Some Place&saddr=Some Other Place";
                    }
                    else{
                        metadataEntity.Weather = "-";
                        metadataEntity.WeatherIcon = "NoWeather.png";
                    }
                }
                catch
                {
                    isWeatherServiceAvailable = false;
                    metadataEntity.Weather = "-";
                    metadataEntity.WeatherIcon = "NoWeather.png";
                }


                string updatedAssessmentMetadata = JsonConvert.SerializeObject(metadataEntity);

                //Store assessments metadata on the device
                StoreAssessmentsOnDevice(updatedAssessmentMetadata, metadataEntity); //entity.AssessmentMetadata, metadataEntity);
                StoreFormsOnDevice(metadataEntity, entity.Forms);
                metadataEntities.Add(metadataEntity);

            }

            return metadataEntities;

        }

        private string GetWeatherIcon(string weather)
        {
            string weatherLowerCase = weather.ToLower();
            if (weatherLowerCase.Contains("thunderstorm"))
            {
                return "Thunderstorm.png";
            }
            else if(weatherLowerCase.Contains("rain"))
            {
                return "Rain.png";
            }
            else if(weatherLowerCase.Contains("cloudy"))
            {
                return "cloudy.png";
            }
            else if(weatherLowerCase.Contains("wind"))
            {
                return "windy.png";
            }
            else
            {
                return "Sunny.png";
            }
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
            //var response = client.GetStringAsync("http://handbookwebapi.azurewebsites.net/api/assessment").Result;
            var response = client.GetStringAsync("http://fda-client-api20180827105916.azurewebsites.net/api/context").Result;
            List<AssessmentEntity> assessmentResponse = JsonConvert.DeserializeObject<List<AssessmentEntity>>(response);

            return assessmentResponse;

        }

    #endregion

}


}
