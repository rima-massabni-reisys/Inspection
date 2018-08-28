using System;
using System.Threading.Tasks;
using System.IO;
using System.Text;
using System.Net.Http;
using Microsoft.Extensions.Logging;
// using Platform.Services.Client;
using Microsoft.Extensions.Caching.Memory;
using Microsoft.Extensions.Options;
using Newtonsoft.Json;
using System.Net.Http.Headers;

namespace Kalect.IntegrationServices
{
    /// <summary>
    /// System session token provider
    /// </summary>
    public class SessionTokenProvider
    {
        private const string SessionTokenKey = "SessionTokenKey";
        private const int ExternalSystemCode = 1;
        private string _url;
        private string _password;

        private static int _approxSessionTimeoutMins = 20;
        private ILogger<SessionTokenProvider> _logger;
        // todo[upgrade]: private EAuthClient _EAuthClient;

        private IMemoryCache _cache;
        private IHttpClientFactory _clientFactory;

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="configOptions"></param>
        /// <param name="logger"></param>
        /// <param name="_EAuthClient"></param>
        public SessionTokenProvider(
            IOptions<AppSettings> settings
            , ILogger<SessionTokenProvider> logger
            /*, EAuthClient _EAuthClient*/
            , IMemoryCache memoryCache
            , IHttpClientFactory clientFactory)
        {
            this._url = $"{AppSettingsValue.PlatformServicesUrl}api/TokenGenerator/SystemToken"; // $"{settings.Value.PlatformServicesUrl}api/TokenGenerator/SystemToken";
            this._password = AppSettingsValue.ExternalSystemPassword; //settings.Value.ExternalSystemPassword;
            this._logger = logger;
            this._cache = memoryCache;
            this._clientFactory = clientFactory;
        }
        /// <summary>
        /// Get system session id
        /// </summary>
        /// <returns></returns>
        public async Task<string> GetSessionToken()
        {
            string sessionToken;

            // Look for cache key.
            if (!_cache.TryGetValue(SessionTokenKey, out sessionToken))
            {
                sessionToken = await GetSystemToken();
                // Set cache options.
                var cacheEntryOptions = new MemoryCacheEntryOptions()
                    // Keep in cache for this time, reset time if accessed.
                    .SetAbsoluteExpiration(TimeSpan.FromMinutes(SessionTokenProvider._approxSessionTimeoutMins));

                // Save data in cache.
                _cache.Set(SessionTokenKey, sessionToken, cacheEntryOptions);

                Trace($"Generated sessionToken: {sessionToken}");
            }

            return sessionToken;
        }

        private async Task<string> GetSystemToken()
        {
            var data = new
            {
                SystemId = ExternalSystemCode,
                Password = _password
            };

            string postObj = JsonConvert.SerializeObject(data);

            try
            {
                var httpClientHandler = new HttpClientHandler();
                httpClientHandler.ClientCertificateOptions = ClientCertificateOption.Manual;
                httpClientHandler.ServerCertificateCustomValidationCallback = (message, cert, chain, errors) => { return true; };

                var client = new HttpClient(httpClientHandler);
                //var client = _clientFactory.CreateClient();



                HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Post, _url);
                request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
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
                    throw new Exception($"SessionTokenProvider.GetSystemToken Request failed - Status code : {response.StatusCode}");
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        private void Trace(string message)
        {
            this._logger.LogTrace(new EventId(), message);
        }
    }
}
