using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using DataCollection.DependencyServices;
using DataCollection.Repository.DataObjects;
using DataCollection.Services.OneDrive;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Xamarin.Forms;

namespace DataCollection.Repository
{
    public class FormRepository: IFormRepository
    {
        public FormInstanceData GetFormInstance(string trackingNumber, string friendlyName)
        {
            FormInstanceData formInstanceData = new FormInstanceData();

            formInstanceData.FormModel = DependencyService.Get<IDataCollectionDependencyService>().LoadFormFromDevice(trackingNumber, friendlyName, "FormModel");
            formInstanceData.FormData = DependencyService.Get<IDataCollectionDependencyService>().LoadFormFromDevice(trackingNumber, friendlyName, "FormData");
            formInstanceData.ValidationSchema = DependencyService.Get<IDataCollectionDependencyService>().LoadFormFromDevice(trackingNumber, friendlyName, "ValidationSchema");
            formInstanceData.WebAttachments = DependencyService.Get<IDataCollectionDependencyService>().LoadFormFromDevice(trackingNumber, friendlyName, "WebAttachments");

            return formInstanceData;
        }

        public List<FormInstanceData> GetAllForms(string folderName)
        {
            return DependencyService.Get<IDataCollectionDependencyService>().LoadAllFormsFromDevice(folderName);
        }

        public async Task SyncFormData(Guid reportId, string formData)
        {
            string url = "http://fdainsp-ehbs-web.reisys.io/fda-client/api/datacollection/" + reportId; //"http://fda-client-api20180827105916.azurewebsites.net/api/datacollection/164c2015-2ec4-4744-907f-36115a08b1e6";

            var jObject = JObject.Parse(formData);

            var postObj = JsonConvert.SerializeObject(formData);//jObject

            var client = new HttpClient();
            client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

            var response = await client.PostAsync(url, new StringContent(postObj, Encoding.UTF8, "application/json")); //(url, formData);

            if (response.IsSuccessStatusCode)
            {
                //message = response.Content.ReadAsStringAsync().Result;// + response.Content.ReadAsStringAsync().Exception;
            }
            else
            {
                
            }
        }

        public async Task SyncMediaToOneDrive(string trackingNumber)
        {
            OneDriveClient oneDriveClient = new OneDriveClient();

            List<string> allFiles = new List<string>();
            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            documentsPath = documentsPath + "/" + trackingNumber;

            if (!Directory.Exists(documentsPath))
            {
                return;
            }

            //Pictures captured by camera
            allFiles.AddRange(Directory.GetFiles(documentsPath, "*.jpg").ToList());
            //videos captured by camera
            allFiles.AddRange(Directory.GetFiles(documentsPath, "*.mp4").ToList());
            //signature captured by scratch pad
            allFiles.AddRange(Directory.GetFiles(documentsPath, "*.png").ToList());
            //voice
            allFiles.AddRange(Directory.GetFiles(documentsPath, "*.wav").ToList());

            foreach (string filePathAndName in allFiles)
            {
                try
                {
                    FileInfo info = new FileInfo(filePathAndName);
                    string fileName = info.Name;
                    await oneDriveClient.PostMediaToOneDrive(filePathAndName, fileName, trackingNumber);
                }
                catch(Exception)
                {
                    // move on to the next file
                }
            }
        }
    }
}
