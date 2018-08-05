using System;
using System.IO;
using Xamarin.Forms;
using DataCollection.DependencyServices;
using Kalect.iOS.DependencyServices;

[assembly: Dependency(typeof(DataCollectionDependencyService))]
namespace Kalect.iOS.DependencyServices
{
    public class DataCollectionDependencyService: IDataCollectionDependencyService
    {
        public string LoadFormFromDevice(string folderName, string friendlyName, string fileName)
        {
            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            documentsPath = documentsPath + "/" + folderName + "/" + friendlyName;
            string fileNameJson = fileName + ".json";
            var filePath = Path.Combine(documentsPath, fileNameJson);
            string formMetadata = string.Empty;
            if (Directory.Exists(documentsPath))
            {
                //update assessments
                if (File.Exists(filePath))
                {
                    //read file
                    formMetadata  = System.IO.File.ReadAllText(filePath);

                }

            }

            return formMetadata;

        }


        public void SaveFormData(string formData, string folderName, string friendlyName,string fileName)
        {
            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            documentsPath = documentsPath + "/" + folderName + "/" + friendlyName;
            string fileNameJson = fileName+".json";
            var filePath = Path.Combine(documentsPath, fileNameJson);
            if (Directory.Exists(documentsPath))
            {
                //update assessments
                //if (File.Exists(filePath))
                //{
                    //write file
                    File.WriteAllText(filePath, formData);

                //}

            }

        }

    }
}
