using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;
using Kalect.Services.Entities;
using Kalect.Services.Interfaces;
using Kalect.Services.Utilities;
using Newtonsoft.Json;
using Xamarin.Forms;
using System.Linq;

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

        public async Task<List<AssessmentMetadataEntity>> GetListOfAllAssignedAssessmentsFromDevice()
        {
            List<AssessmentMetadataEntity> entities = new List<AssessmentMetadataEntity>();
            WeatherService weatherService = new WeatherService();

            List<string> assessmentsFromDevice = await LoadAllAssessmentFromDevice();

            //bool isInternetAvailable = true;

            foreach (string assessment in assessmentsFromDevice)
            {
                AssessmentMetadataEntity entity = JsonConvert.DeserializeObject<AssessmentMetadataEntity>(assessment);

                try
                {
                    entity.Weather = weatherService.GetWeather(entity.OrganizationCityState);
                    entity.WeatherIcon = GetWeatherIcon(entity.Weather);
                    entity.LastUpdatedDateFormatted = Convert.ToDateTime(entity.LastUpdatedDate).TimeAgo();

                    if (entity.AssessmentCategories != null)
                    {
                        entity.AssessmentCategoriesIcon = GetCategoryIcon(entity.AssessmentCategories);
                    }
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


            return entities.OrderByDescending(x=> x.LastUpdatedDate).ToList();
        }


        public async Task<List<AssessmentMetadataEntity>> GetListOfAllAssignedAssessmentsFromServer()
        {
            
            List<AssessmentEntity> assessmentResponseFromServer = await GetListOfAllAssignedAssessmentsFromServerAPICall();

            List<AssessmentMetadataEntity> metadataEntities = new List<AssessmentMetadataEntity>();

            WeatherService weatherService = new WeatherService();
            bool isWeatherServiceAvailable = true;

            foreach (AssessmentEntity entity in assessmentResponseFromServer)
            {
                AssessmentMetadataEntity metadataEntity = JsonConvert.DeserializeObject<AssessmentMetadataEntity>(entity.AssessmentMetadata);

                //create the map url when data is pulled the first time.
                metadataEntity.MapUrl = "http://maps.apple.com/?daddr=" + metadataEntity.OrganizationAddress;
                metadataEntity.LastUpdatedDateFormatted = Convert.ToDateTime(metadataEntity.LastUpdatedDate).TimeAgo();
                metadataEntity.AssessmentCategoriesIcon = GetCategoryIcon(metadataEntity.AssessmentCategories);

                try
                {
                    if (isWeatherServiceAvailable)
                    {
                        //send online.offline param to the method
                        metadataEntity.Weather = weatherService.GetWeather(metadataEntity.OrganizationCityState);
                        metadataEntity.WeatherIcon = GetWeatherIcon(metadataEntity.Weather);

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

            return metadataEntities.OrderByDescending(x => x.LastUpdatedDate).ToList();

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
                return "Cloudy.png";
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

        private string GetCategoryIcon(string assessmentCategory)
        {
            string assessmentCategoryLowerCase = assessmentCategory.ToLower();
            if (assessmentCategoryLowerCase.Contains("farm"))
            {
                return "farmnew.png";
            }
            else if (assessmentCategoryLowerCase.Contains("bio"))
            {
                return "bio.png";
            }
            else if (assessmentCategoryLowerCase.Contains("cosmetics"))
            {
                return "cosmetics.png";
            }
            else if (assessmentCategoryLowerCase.Contains("drungs"))
            {
                return "drugs.png";
            }
            else if (assessmentCategoryLowerCase.Contains("electronics"))
            {
                return "electronics.png";
            }
            else if (assessmentCategoryLowerCase.Contains("food"))
            {
                return "food.png";
            }
            else if (assessmentCategoryLowerCase.Contains("medical"))
            {
                return "medical.png";
            }
            else if (assessmentCategoryLowerCase.Contains("tobacco"))
            {
                return "tobacco.png";
            }
            else if (assessmentCategoryLowerCase.Contains("vet"))
            {
                return "vet.png";
            }
            else
            {
                return "farmnew.png";
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

        private async Task<List<string>> LoadAllAssessmentFromDevice()
        {
            return await DependencyService.Get<IKalectDependencyServices>().LoadAssessmentsMetadataFromDevice();
        }


        /*public async Task SyncAssessment(AssessmentMetadataEntity assessmentMetadataEntity)
        {
            FormService formService = new FormService();
            List<FormInstance> formInstances = formService.GetAllForms(assessmentMetadataEntity.AssessmentTrackingNumber.ToString());

            foreach(Sections section in assessmentMetadataEntity.Sections)
            {
                FormInstance formInstance = new FormInstance();
                formInstance = formInstances.Find(x => x.FriendlyName == section.SectionFriendlyName);

                await formService.UpdateFormData(assessmentMetadataEntity.AssessmentId, formInstance.FormData);
            }

        }*/

        #endregion



        #region webAPI calls

        private async Task<List<AssessmentEntity>> GetListOfAllAssignedAssessmentsFromServerAPICall()
        {
            var client = new HttpClient();
            //var response = client.GetStringAsync("http://handbookwebapi.azurewebsites.net/api/assessment").Result;
            //var response = client.GetStringAsync("http://fda-client-api20180827105916.azurewebsites.net/api/context").Result;

            var response = await client.GetStringAsync("http://fda-client-api2.azurewebsites.net/api/context");

            List<AssessmentEntity> assessmentResponse = JsonConvert.DeserializeObject<List<AssessmentEntity>>(response);

            return assessmentResponse;
        }

    #endregion

}


}
