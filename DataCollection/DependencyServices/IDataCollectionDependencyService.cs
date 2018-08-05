using System;
namespace DataCollection.DependencyServices
{
    public interface IDataCollectionDependencyService
    {
        void SaveFormData(string formData, string folderName, string friendlyName, string fileName);
        string LoadFormFromDevice(string folderName, string friendlyName, string filename);
    }
}
