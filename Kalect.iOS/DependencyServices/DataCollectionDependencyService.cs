using System;
using System.IO;
using Xamarin.Forms;
using DataCollection.DependencyServices;
using Kalect.iOS.DependencyServices;
using System.Collections.Generic;
using DataCollection.Repository.DataObjects;

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

        public void SaveImage(Stream bitmap, string folderName, string fileName)
        {
            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            documentsPath = documentsPath + "/" + folderName;

            var filePath = Path.Combine(documentsPath, fileName);

            byte[] buffer = new byte[16 * 1024];
            MemoryStream ms = new MemoryStream();
            using (ms)
            {
                int read;
                while ((read = bitmap.Read(buffer, 0, buffer.Length)) > 0)
                {
                    ms.Write(buffer, 0, read);
                }
                //ms.ToArray();
            }

            File.WriteAllBytes(filePath, ms.ToArray());

        }

        public Stream GetImage(string folderName, string fileName)
        {
            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            documentsPath = documentsPath + "/" + folderName;

            var filePath = Path.Combine(documentsPath, fileName);

            if (File.Exists(filePath))
            {
                byte[] savedImageByte = File.ReadAllBytes(filePath);
                MemoryStream memoryStream = new MemoryStream(savedImageByte);
                return memoryStream;
            }
            else
            {
                return null;
            }

        }

        public void SaveVoiceMemo(string recordedFilePathOfVoiceMemo, string folderName, string fileName)
        {
            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            documentsPath = documentsPath + "/" + folderName;

            var filePath = Path.Combine(documentsPath, fileName);

            if (File.Exists(recordedFilePathOfVoiceMemo))
            {
                File.Copy(recordedFilePathOfVoiceMemo, filePath, true);
            }

        }

        public List<FormInstanceData> LoadAllFormsFromDevice(string folderName)
        {
            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            documentsPath = documentsPath + "/" + folderName;
            string[] subDirectories = Directory.GetDirectories(documentsPath);


            List<FormInstanceData> formInstances = new List<FormInstanceData>();
            foreach(string subDirectory in subDirectories)
            {
                //string subFolderPath = documentsPath + "/" + subDirectory;
                DirectoryInfo directoryInfo = new DirectoryInfo(subDirectory);

                FormInstanceData formInstanceData = new FormInstanceData();
                formInstanceData.FriendlyName = directoryInfo.Name;
                formInstanceData.FormModel = LoadFileJson(subDirectory, FormFiles.FormModel.ToString());
                formInstanceData.FormData = LoadFileJson(subDirectory, FormFiles.FormData.ToString());
                formInstanceData.ValidationSchema = LoadFileJson(subDirectory, FormFiles.ValidationSchema.ToString());

                formInstances.Add(formInstanceData);

            }

            return formInstances;

        }

        string LoadFileJson(string fileDirectoryPath, string fileName)
        {
            string fileFullPath = Path.Combine(fileDirectoryPath, fileName + ".json");
            if (File.Exists(fileFullPath))
            {
                //read file
                return System.IO.File.ReadAllText(fileFullPath);

            }

            return string.Empty;

        }

    }
}
