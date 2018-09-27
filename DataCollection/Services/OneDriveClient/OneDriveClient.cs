using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace DataCollection.Services.OneDrive
{
    public class OneDriveClient
    {
        private string RequestJson
        {
            get
            {
                //return "{'fileName':'frog.jpg','content':{'sourceUri':'https://upload.wikimedia.org/wikipedia/commons/5/55/Atelopus_zeteki1.jpg','encodedFileBytes':''},'targetUser':'yogesh.kumar@reisystems.com','targetTaxonomy':'test/upload/path','additional':{}}";
                return "{'fileName':'','content':{'sourceUri':'','encodedFileBytes':''},'targetUser':'','targetTaxonomy':'','additional':{}}";
            }
        }


        public async Task PostMediaToOneDrive(string filePathAndName, string fileName, string trackingNumber)
        {
            // base64 encoded file contents
            string encodedFileBytes = Convert.ToBase64String(File.ReadAllBytes(filePathAndName));

            // append "/direct" to service path
            Configuration.OneDriveRouteUri += "/direct";

            // make request
            var response = new OneDriveClient().PostFile(new UploadRequest
            {
                Files = new List<UploadRequestFile>
                {
                    new UploadRequestFile
                    {
                        Name = fileName,
                        TargetPath = "fda/"+trackingNumber,
                        Content = encodedFileBytes
                    },
                },
                TargetUsers = new[] { "yogesh.kumar@reisystems.com" },
                Additional = new JObject()
            });

            //response.Wait();

            var result = await response;

            //return result;

        }

        public async Task<string> PostFile(UploadRequest requestData)
        {
            using (var client = new HttpClient())
            {
                client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("SharedAccessSignature",
                AuthTokenGenerator.Encrypt(Configuration.ClientId, Configuration.ClientSecret, Configuration.ExpirationDate));
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                var postObj = JsonConvert.SerializeObject(requestData);

                HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Post, Configuration.OneDriveRouteUri);
                request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                //request.Headers.Authorization = new AuthenticationHeaderValue("uid",AuthTokenGenerator.Encrypt());
                //request.Headers.TryAddWithoutValidation("Authorization", AuthTokenGenerator.Encrypt());

                request.Content = new StringContent(postObj,
                Encoding.UTF8,
               "application/json");

                try
                {
                    var response = client.SendAsync(request);



                    if (response.Result.IsSuccessStatusCode)
                    {
                        return await response.Result.Content.ReadAsStringAsync();
                    }
                    else
                    {
                        throw new Exception($"GetContext Request failed - Status code : {response.Result.StatusCode}");
                    }
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }


 

 


        /*public async Task PostMediaToOneDrive(string filePathAndName, string fileName, string trackingNumber)
        {
            HttpClient client = new HttpClient();

            //client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
            //client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Basic", AuthTokenGenerator.Encrypt());

            string encodedFileBytes = Convert.ToBase64String(File.ReadAllBytes(filePathAndName));


            JObject requestJson = JObject.Parse(RequestJson);
            requestJson["fileName"] = fileName;
            //requestJson["content"]["sourceUri"] = "https://upload.wikimedia.org/wikipedia/commons/5/55/Atelopus_zeteki1.jpg";
            requestJson["content"]["encodedFileBytes"] = encodedFileBytes;
            requestJson["targetUser"] = "yogesh.kumar@reisystems.com";//"srikanth.devarajan@reisystems.com"; //
            requestJson["targetTaxonomy"] = "fda/"+trackingNumber;

            var postObj = JsonConvert.SerializeObject(requestJson);
        

            HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Post, Configuration.OneDriveRouteUri);
            request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            //request.Headers.Authorization = new AuthenticationHeaderValue("uid",AuthTokenGenerator.Encrypt());
            request.Headers.TryAddWithoutValidation("Authorization", AuthTokenGenerator.Encrypt());
            

            request.Content = new StringContent(postObj,
                                                Encoding.UTF8,
                                                "application/json");

            try
            {
                var response = client.SendAsync(request);



                if (response.Result.IsSuccessStatusCode)
                {
                    await response.Result.Content.ReadAsStringAsync();
                }
                else
                {
                    throw new Exception($"GetContext Request failed - Status code : {response.Result.StatusCode}");
                }
            }catch(Exception ex)
            {
                throw ex;
            }

        }*/
    }
}
