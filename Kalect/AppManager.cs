using System;
using Kalect.Services.Entities;

namespace Kalect
{
    public class AppManager
    {
        public AppManager()
        {
        }

        static AssessmentMetadataEntity _selectedAssessmentMetadata;
        public static AssessmentMetadataEntity SelectedAssessmentMetadata
        {
            get { return _selectedAssessmentMetadata; }
            set { _selectedAssessmentMetadata = value; }
        }

        static string _location;
        public static string Location
        {
            get { return _location; }
            set { _location = value; }
        }
            
    }
}
