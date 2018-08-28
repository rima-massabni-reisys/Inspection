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
    public class DataCollectionService
    {
        private string _url;
        private IHttpClientFactory _clientFactory;
        private SessionTokenProvider _sessionTokenProvider;

        public DataCollectionService(IOptions<AppSettings> settings
            , IHttpClientFactory clientFactory
            , SessionTokenProvider sessionTokenProvider)
        {
            this._url = AppSettingsValue.DataCollectionUrl; //settings.Value.DataCollectionUrl;
            this._clientFactory = clientFactory;
            this._sessionTokenProvider = sessionTokenProvider;
        }

        public async Task<string> GetFormInstance(
            Guid reportId,
            string friendlyName,
            int tenantId = 0,
            int version = 1,
            int definitionVersionId = 1,
            int instanceVersionId = 1,
            int saveInstanceVersionId = 1
        )
        {
            var requestUrl = $"{this._url}api/form/getFormInstance?friendlyName={friendlyName}&tenantId={tenantId}&version={version}&definitionVersionId={definitionVersionId}&instanceVersionId={instanceVersionId}&saveInstanceVersionId={saveInstanceVersionId}&resourceValue={reportId}";

            var accessToken = await this._sessionTokenProvider.GetSessionToken();

            var client = _clientFactory.CreateClient();
            HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Get, requestUrl);
            request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
            request.Headers.Add("UserId", Constants.AdminUserId.ToString());

            var response = await client.SendAsync(request);

            if (response.IsSuccessStatusCode)
            {
                return await response.Content.ReadAsStringAsync();
            }
            else
            {
                throw new Exception($"DataCollectionService.GetFormInstance Request failed - Status code : {response.StatusCode}");
            }
        }

        internal async Task UpdateFormInstance(
            Guid reportId,
            string formContent,
            int tenantId = 0,
            int version = 1,
            int definitionVersionId = 1,
            int instanceVersionId = 1,
            int saveInstanceVersionId = 1)
        {
            var newJObj = JObject.Parse(formContent);
            var friendlyName = (string)newJObj.Property("friendlyName").Value;

            var originalForm = await this.GetFormInstance(reportId, friendlyName);
            var origJObj = JObject.Parse(originalForm);

            origJObj["formData"] = newJObj["formData"];

            var data = new
            {
                item = origJObj
            };
            var postObj = JsonConvert.SerializeObject(data);

            var updateUrl = $"{this._url}api/form/updateFormInstance?friendlyName={friendlyName}&tenantId={tenantId}&version={version}&definitionVersionId={definitionVersionId}&instanceVersionId={instanceVersionId}&saveInstanceVersionId={saveInstanceVersionId}&resourceValue={reportId}";

            var accessToken = await this._sessionTokenProvider.GetSessionToken();

            var client = _clientFactory.CreateClient();
            HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Post, updateUrl);
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
                throw new Exception($"DataCollectionService.UpdateFormInstance Request failed - Status code : {response.StatusCode}");
            }

        }
    }
}