using System;
using System.Collections.Generic;
using static Kalect.Constants.SectionConstants;

namespace Kalect.Services
{
    public class SectionManager
    {
        public static List<string> GetPreventionSectionList()
        {
            List<string> sectionList = new List<string>();
            sectionList.Add(PreventionSection.Pullets);
            sectionList.Add(PreventionSection.Biosecurity);
            sectionList.Add(PreventionSection.RodentsFliesOtherPestControl);
            sectionList.Add(PreventionSection.CleaningAndDisinfectionProducts);
            sectionList.Add(PreventionSection.RefrigerationProcedures);

            return sectionList;
        }

        public static List<string> GetEnvironmentTestingSectionList()
        {
            List<string> sectionList = new List<string>();
            sectionList.Add(EnvironmentTestingSection.EnvironmentalTesting);
            sectionList.Add(EnvironmentTestingSection.TestingAfterInducedMoltingPeriod);

            return sectionList;
        }

        public static List<string> GetEggTestingSectionList()
        {
            List<string> sectionList = new List<string>();
            sectionList.Add(EggTestingSection.EggTesting);

            return sectionList;
        }
    }
}
