using System;
using System.Linq;
using System.Collections.Generic;
using Newtonsoft.Json.Linq;

namespace Kalect.IntegrationServices
{
    internal class FormUtility
    {
        internal static List<string> GetFormFriendlyNamesFromContext(string strContext)
        {
            var jObj = JObject.Parse(strContext);

            var sectionStatus = jObj.SelectToken("sourceData.sectionStatusModel.sectionStatus") as JArray;

            var inspectionSection = sectionStatus.Where(t=> t.Value<string>("displayValue").Equals("Inspections")).FirstOrDefault();
            if(inspectionSection == null)
            {
                throw new Exception("inspectionSection not found in context json");
            }

            var formSections = inspectionSection.SelectToken("groups[0].sections") as JArray;

            return formSections.Select(t=> t.Value<string>("friendlyName")).ToList();
        }
    }
}