using System;
using Newtonsoft.Json;

namespace Kalect.Services.Entities
{
    public class AssessmentMetadataEntity
    {
        [JsonProperty("AssessmentId")]
        public string AssessmentId { get; set; }

        [JsonProperty("AssessmentTrackingNumber")]
        public long AssessmentTrackingNumber { get; set; }

        [JsonProperty("OrganizationName")]
        public string OrganizationName { get; set; }

        [JsonProperty("OrganizationAddress")]
        public string OrganizationAddress { get; set; }

        [JsonProperty("OrganizationCityState")]
        public string OrganizationCityState { get; set; }

        [JsonProperty("AssessmentStartDate")]
        public string AssessmentStartDate { get; set; }

        [JsonProperty("AssessmentEndDate")]
        public string AssessmentEndDate { get; set; }

        [JsonProperty("AssessmentStatus")]
        public string AssessmentStatus { get; set; }

        [JsonProperty("AssessmentStatusCode")]
        public int AssessmentStatusCode { get; set; }

        [JsonProperty("Sections")]
        public Sections[] Sections { get; set; }

        [JsonProperty("Weather")]
        public string Weather { get; set; }

        [JsonProperty("WeatherIcon")]
        public string WeatherIcon { get; set; }


        [JsonProperty("MapUrl")]
        public string MapUrl { get; set; }

        [JsonProperty("LastUpdatedDate")]
        public DateTime LastUpdatedDate { get; set; }

        [JsonProperty("LastUpdatedDateFormatted")]
        public string LastUpdatedDateFormatted { get; set; }

        [JsonProperty("AssessmentCategories")]
        public string AssessmentCategories { get; set; }

        [JsonProperty("AssessmentCategoriesIcon")]
        public string AssessmentCategoriesIcon { get; set; }
    }

    public class Sections
    {
        [JsonProperty("SectionFriendlyName")]
        public string SectionFriendlyName { get; set; }

        [JsonProperty("SectionDisplayName")]
        public string SectionDisplayName { get; set; }

        [JsonProperty("SectionStatus")]
        public string SectionStatus { get; set; }

        [JsonProperty("SectionStatusCode")]
        public int SectionStatusCode { get; set; }

    }
}
