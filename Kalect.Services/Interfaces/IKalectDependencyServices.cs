using System;
using System.Collections.Generic;
using System.IO;

namespace Kalect.Services.Interfaces
{
    public interface IKalectDependencyServices
    {
        //void SaveAssessments(string assessment, string folderName, string fileName);
        void LoadAssessments(string folderName, string fileName);
        void SaveAssessmentsMetadataOnDevice(string assessmentMetadata, string folderName, string fileName);
        void SaveFormsOnDevice(string fileContent, string folderName, string friendlyName, string fileName);
        List<string> LoadAssessmentsMetadataFromDevice();
        bool DoesAssessmentMetadataExistsOnDevice(string folderName, string fileName);
        void DeleteAssessmentsFromDevice();
        void UpdateAssessmentMetadata(string assessmentMetadata, string folderName, string fileName);
        void SaveImage(Stream bitmap, string folderName, string fileName);
    }
}
