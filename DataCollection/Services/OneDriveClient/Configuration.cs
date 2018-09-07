using System;
using System.Collections.Generic;
using System.Text;

namespace DataCollection.Services.OneDrive
{
    public static class Configuration
    {
        public static string ClientId = "7d057202-f627-405c-bc0c-587640fd40f1";
        public static string ClientSecret = "ea3bd830-01ae-4aba-97cf-ed77115811f7";
        public static DateTime ExpirationDate = DateTime.Now.AddDays(1);
        public static string OneDriveRouteUri = "https://grantsservices-apigateway.azure-api.net/upload/rei/onedrive/file/special";
    }
}
