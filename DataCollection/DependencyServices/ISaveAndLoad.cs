using System;
namespace DataCollection.DependencyServices
{
    public interface ISaveAndLoad
    {
        void SaveText(string folderName, string friendlyName, string text);
        string LoadText(string folderName, string filename);
    }
}
