using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json.Linq;

namespace DataCollection.Services.OneDrive
{
    public static class Configuration
    {
        public static string ClientId = "7d057202-f627-405c-bc0c-587640fd40f1";
        public static string ClientSecret = "ea3bd830-01ae-4aba-97cf-ed77115811f7";
        public static DateTime ExpirationDate = DateTime.UtcNow.AddDays(1);
        public static string OneDriveRouteUri = "https://grantsservices-apigateway.azure-api.net/upload/rei/onedrive/mobile";
    }

    /// <summary>
    /// The data needed per file as part of the upload operation
    /// </summary>
    public class UploadRequestFile
    {
        /// <summary>
        /// The name of the file (including extension)
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// The path to store the file in
        /// </summary>
        public string TargetPath { get; set; }
        /// <summary>
        /// The URI for the file OR the base64 encoded file content
        /// </summary>
        public string Content { get; set; }
        /// <summary>
        /// When the file was last updated. File will be retrieved from cache if not updated since last upload
        /// </summary>
        public DateTime LastUpdatedDate { get; set; }
        /// <summary>
        /// Whether or not the file should remain cached in the database
        /// </summary>
        public bool CacheEnabled { get; set; }
    }

    /// <summary>
    /// The request object to initiate a file upload operation
    /// </summary>
    public class UploadRequest
    {
        /// <summary>
        /// List of file information
        /// </summary>
        public IEnumerable<UploadRequestFile> Files { get; set; }
        /// <summary>
        /// The users to upload the files to
        /// </summary>
        public IEnumerable<string> TargetUsers { get; set; }
        /// <summary>
        /// any additional data for logging
        /// </summary>
        public JObject Additional { get; set; }
    }

}
