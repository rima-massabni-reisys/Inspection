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
