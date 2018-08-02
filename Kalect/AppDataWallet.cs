using System;
using Kalect.Services.Entities;

namespace Kalect
{
    public class AppDataWallet
    {
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
