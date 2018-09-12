using System;
using System.IO;
using System.Collections;
using DataCollection.Repository.DataObjects;
using System.Collections.Generic;

namespace DataCollection.DependencyServices
{
    public interface IDataCollectionDependencyService
    {
        void SaveFormData(string formData, string folderName, string friendlyName, string fileName);
        string LoadFormFromDevice(string folderName, string friendlyName, string filename);
        void SaveImage(Stream bitmap, string folderName, string fileName);
        void SaveVoiceMemo(string recordedFilePathOfVoiceMemo, string folderName, string fileName);
        List<FormInstanceData> LoadAllFormsFromDevice(string folderName);
    }
}
