using System;
using System.IO;
using Xamarin.Forms;
using DataCollection.DependencyServices;
using Kalect.iOS.DependencyServices;

[assembly: Dependency(typeof(SaveAndLoad))]
namespace Kalect.iOS.DependencyServices
{
    public class SaveAndLoad: ISaveAndLoad
    {
        public string LoadText(string folderName, string friendlyName)
        {
            string fileName = friendlyName + ".json";
            string fileText = string.Empty;

            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            documentsPath = documentsPath + "/" + folderName;
            var filePath = Path.Combine(documentsPath, fileName);
            if (File.Exists(filePath))
            {
                fileText = System.IO.File.ReadAllText(filePath);
            }
            return fileText;
        }

        public void SaveText(string folderName, string friendlyName, string text)
        {
            string fileName = friendlyName + ".json";

            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            documentsPath = documentsPath + "/" + folderName;
            var filePath = Path.Combine(documentsPath, fileName);

            //if (File.Exists(filePath))
            //    File.Delete(filePath);
 
            File.WriteAllText(filePath, text);
        }


    }
}
