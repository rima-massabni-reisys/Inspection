namespace Kalect.IntegrationServices
{
    public class AppSettings
    {
        public string HVISUrl {get;set;}
        public string PlatformServicesUrl { get; set; }
        public string ExternalSystemPassword { get; set; }
        public string DataCollectionUrl { get; set; }
    }


    public static class AppSettingsValue
    {
        /*"HVISUrl": ,
    "PlatformServicesUrl": ,
    "ExternalSystemPassword": "n50ALbNfmOE=",
    "DataCollectionUrl": */
        
        public static string HVISUrl { get { return "https://fdainsp-ehbs-web.reisys.io/HVISSubmission/"; } }
        public static string PlatformServicesUrl { get { return "https://fdainsp-ehbs-web.reisys.io/PlatformServices/"; }  }
        public static string ExternalSystemPassword { get { return "n50ALbNfmOE="; } }
        public static string DataCollectionUrl { get { return "https://fdainsp-ehbs-web.reisys.io/DataCollection/"; } }
    }
}