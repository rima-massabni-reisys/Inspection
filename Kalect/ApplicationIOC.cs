/*
using System;
using System.Collections.Generic;
using System.IO;
using System.Net.Http;
using System.Reflection;
using Kalect.IntegrationServices;
//using fda_client.Services;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Http;

namespace Kalect
{

    public static class ApplicationIOC
    {
        private static IServiceProvider _serviceProvider = null;

        /// <summary>
        /// Dotnet Core IOC provider
        /// </summary>
        /// <returns></returns>
        public static IServiceProvider ServiceProvider
        {
            get
            {
                return _serviceProvider;
            }
        }


        public static Dictionary<string, string> arrayDict = new Dictionary<string, string>
        {
            {"AppSettings:HVISUrl", "https://fdainsp-ehbs-web.reisys.io/HVISSubmission/"},
            {"AppSettings:PlatformServicesUrl", "https://fdainsp-ehbs-web.reisys.io/PlatformServices/"},
            {"AppSettings:ExternalSystemPassword", "n50ALbNfmOE="},
            {"AppSettings:DataCollectionUrl", "https://fdainsp-ehbs-web.reisys.io/DataCollection/"}

        };

        /// <summary>
        /// Initialize IOC
        /// </summary>
        public static void Initialize()
        {
            var services = new ServiceCollection();

            //string basePath = Directory.GetCurrentDirectory();

            var builder = new ConfigurationBuilder();

            //builder.SetBasePath(basePath);

            //builder.AddJsonFile("appsettings.json", optional: false);

            //builder.AddInMemoryCollection(arrayDict);


            var configuration = builder.Build();

            //services.Configure<AppSettings>(OptionsServiceCollectionExtensions =>)

            services.Configure<AppSettings>(options =>
            {
                //configuration.GetSection("AppSettings").Bind(options);
                options.HVISUrl = "https://fdainsp-ehbs-web.reisys.io/HVISSubmission/";
                options.PlatformServicesUrl = "https://fdainsp-ehbs-web.reisys.io/PlatformServices/";
                options.ExternalSystemPassword = "n50ALbNfmOE=";
                options.DataCollectionUrl = "https://fdainsp-ehbs-web.reisys.io/DataCollection/";

                configuration.Bind(options);
            });



            services.AddHttpClient("")
            .ConfigurePrimaryHttpMessageHandler(() =>
            {
                return new HttpClientHandler()
                {
                    ServerCertificateCustomValidationCallback = (message, cert, chain, errors) => { return true; }
                };
            });

            services.AddMemoryCache();
            services.AddLogging();

            services.AddTransient<HVISContextService, HVISContextService>();
            services.AddTransient<SessionTokenProvider, SessionTokenProvider>();
            services.AddTransient<DataCollectionService, DataCollectionService>();


            _serviceProvider = services.BuildServiceProvider();


        }
    }
}
*/