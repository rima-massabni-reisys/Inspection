using System;
namespace Kalect.Services.Utilities
{
    public class FileFolderUtility
    {
        public FileFolderUtility()
        {
        }

        public static string GetAssessmentFileName(string assessmentTrackingNumber)
        {
            return "AssessmentMetadata_" +assessmentTrackingNumber;
        }
    }
}
