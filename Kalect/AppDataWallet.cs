using System;
using Kalect.Services.Entities;

namespace Kalect
{
    public class AppDataWallet
    {
        static AssessmentMetadataEntity _selectedAssessmentMetadata;
        static AssessmentHistory _selectedAssessmentHistory;

        public static AssessmentMetadataEntity SelectedAssessmentMetadata
        {
            get { return _selectedAssessmentMetadata; }
            set { _selectedAssessmentMetadata = value; }
        }

        public static AssessmentHistory SelectedAssessmentHistory
        {
            get { return _selectedAssessmentHistory; }
            set { _selectedAssessmentHistory = value; }
        }

        static string _location;
        public static string Location
        {
            get { return _location; }
            set { _location = value; }
        }
    }
}
