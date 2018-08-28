using System;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Extensions.Options;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace Kalect.IntegrationServices
{
    public class HVISContextService
    {
        private string _url;
        private IHttpClientFactory _clientFactory;
        private SessionTokenProvider _sessionTokenProvider;

        public HVISContextService(IOptions<AppSettings> settings
            , IHttpClientFactory clientFactory
            , SessionTokenProvider sessionTokenProvider)
        {
            this._url = AppSettingsValue.HVISUrl; //settings.Value.HVISUrl;
            this._clientFactory = clientFactory;
            this._sessionTokenProvider = sessionTokenProvider;
        }

        public async Task<string> GetContext(Guid reportId)
        {
            var data = new
            {
                solutionName = "HVIS-Submission",
                reviewdecisionId = default(string),
                reportId = reportId,
                friendlyName = "statuspage",
                lastFriendlyName = default(string),
                versionId = 1,
                roleId = 18
            };
            var postObj = JsonConvert.SerializeObject(data);
            var requestUrl = $"{this._url}api/context/getContext";

            var accessToken = await this._sessionTokenProvider.GetSessionToken();

            var client = _clientFactory.CreateClient();
            HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Post, requestUrl);
            request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
            request.Headers.Add("UserId", Constants.AdminUserId.ToString());
            request.Content = new StringContent(postObj,
                                                Encoding.UTF8,
                                                "application/json");

            var response = await client.SendAsync(request);
            
            if (response.IsSuccessStatusCode)
            {
                return await response.Content.ReadAsStringAsync();
            }
            else
            {
                throw new Exception($"GetContext Request failed - Status code : {response.StatusCode}");
            }
        }

        internal async Task UpdateContext(Guid reportId, string strContext)
        {
            var jObj = JObject.Parse(strContext);
            var sectionStatus = jObj.SelectToken("sourceData.sectionStatusModel.sectionStatus");
            var data = new
            {
                statusJSON = new {
                    sectionStatus = sectionStatus
                },
                reportId = reportId,
                userId = Constants.AdminUserId
            };
            var postObj = JsonConvert.SerializeObject(data);
            var requestUrl = $"{this._url}api/sectionStatus/updateSectionStatus";

            var accessToken = await this._sessionTokenProvider.GetSessionToken();

            var client = _clientFactory.CreateClient();
            HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Post, requestUrl);
            request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
            request.Headers.Add("UserId", Constants.AdminUserId.ToString());
            request.Content = new StringContent(postObj,
                                                Encoding.UTF8,
                                                "application/json");

            var response = await client.SendAsync(request);
            
            if (response.IsSuccessStatusCode)
            {
                await response.Content.ReadAsStringAsync();
            }
            else
            {
                throw new Exception($"UpdateContext Request failed - Status code : {response.StatusCode}");
            }            
        }
    }
}