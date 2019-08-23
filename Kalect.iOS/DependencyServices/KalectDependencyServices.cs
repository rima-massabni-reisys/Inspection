using System;
using System.IO;
using Kalect.iOS.DependencyServices;
using Kalect.Services.Interfaces;
using Xamarin.Forms;
using Kalect.Services;
using System.Collections.Generic;
using System.Threading.Tasks;
using Kalect.Services.Entities;
using System.Net;

[assembly: Dependency(typeof(KalectDependencyServices))]
namespace Kalect.iOS.DependencyServices
{
    public class KalectDependencyServices : IKalectDependencyServices
    {
        public void LoadAssessments(string folderName, string fileName)
        {
            throw new NotImplementedException();
        }

        private string CreateWebAttachmentsLocalFolder(long trackingNumber, string friendlyName)
        {
            string assessmentFolderPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Personal), trackingNumber.ToString(), friendlyName, "webattachments");

            if (!Directory.Exists(assessmentFolderPath))
            {
                Directory.CreateDirectory(assessmentFolderPath);
            }

            return assessmentFolderPath;
        }

        public void DownloadWebAttachments(long trackingNumber, string friendlyName, List<WebAttachmentEntity> attachmentsInfo)
        {
            string localFolderPath = CreateWebAttachmentsLocalFolder(trackingNumber, friendlyName);
            using (WebClient webClient = new WebClient())
            {
                foreach (WebAttachmentEntity attInfo in attachmentsInfo)
                {
                    string fileUri = "http://fdainsp-ehbs-web.reisys.io/HVISSubmission/" + attInfo.Path.Replace("\\", "/");
                    string fileLocalPath = Path.Combine(localFolderPath, attInfo.Name);
                    attInfo.LocalPath = fileLocalPath;
                    webClient.DownloadFile(new Uri(fileUri), fileLocalPath);
                }
            }
        }

        public void DeleteAssessmentsFromDevice()
        {
            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);

            if(Directory.Exists(documentsPath + "/" + "1200001"))
                Directory.Delete(documentsPath + "/" + "1200001", true);

            if (Directory.Exists(documentsPath + "/" + "1200002"))
                Directory.Delete(documentsPath + "/" + "1200002", true);

            if (Directory.Exists(documentsPath + "/" + "1200003"))
                Directory.Delete(documentsPath + "/" + "1200003", true);

            if (Directory.Exists(documentsPath + "/" + "1200004"))
                Directory.Delete(documentsPath + "/" + "1200004", true);

            for (int i = 690; i < 710; i++)
            {
                if (Directory.Exists(documentsPath + "/" + i))
                    Directory.Delete(documentsPath + "/" + i, true);
            }

        }

        public void DeleteAssessmentFromDevice(long AssessmentTrackingNumber)
        {
            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);

            if (Directory.Exists(documentsPath + "/" + AssessmentTrackingNumber))
            {
                Directory.Delete(documentsPath + "/" + AssessmentTrackingNumber, true);
            }
        }

        /// <summary>
        /// Saves the assessments.
        /// </summary>
        /// <param name="assessmentMetadata">Assessment Metadata JSON</param>
        /// <param name="folderName">Folder name. Matches TrackingNumber</param>
        /// <param name="fileName">File name.</param>
        public void SaveAssessmentsMetadataOnDevice(string assessmentMetadata, string folderName, string fileName)
        {
            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            documentsPath = documentsPath + "/" + folderName;
            string fileNameJson = fileName + ".json";
            var filePath = Path.Combine(documentsPath, fileNameJson);

            if (!Directory.Exists(documentsPath))
            {
                System.IO.Directory.CreateDirectory(documentsPath);
            }

            //update assessments
            if (File.Exists(filePath))
            {
                //read file
                string existingAssessment = System.IO.File.ReadAllText(filePath);
                if (existingAssessment.Equals(assessmentMetadata))
                {
                    // no action at the moment
                }
                else
                {
                    //if different then delete the existing file and create the new updated file.
                    File.Delete(filePath);
                    File.WriteAllText(filePath, assessmentMetadata);
                }
            }
            else
            {
                File.WriteAllText(filePath, assessmentMetadata);
            }

        }

        /// <summary>
        /// Saves the assessments.
        /// </summary>
        /// <param name="fileContent">Assessment Metadata JSON</param>
        /// <param name="folderName">Folder name. Matches TrackingNumber</param>
        /// <param name="fileName">File name.</param>
        public void SaveFormsOnDevice(string fileContent, string folderName, string friendlyName, string fileName)
        {
            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            documentsPath = documentsPath + "/" + folderName + "/" + friendlyName;
            string fileNameJson = fileName + ".json";
            var filePath = Path.Combine(documentsPath, fileNameJson);

            if (Directory.Exists(documentsPath))
            {
                //update assessments
                if (!File.Exists(filePath))
                {
                    File.WriteAllText(filePath, fileContent);
                }
            }
            else
            {
                System.IO.Directory.CreateDirectory(documentsPath);
                File.WriteAllText(filePath, fileContent);
            }

        }

        public Task<List<string>> LoadAssessmentsMetadataFromDevice()
        {
            var personalFolderPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);

            DirectoryInfo personalFolderRootDirectory = new DirectoryInfo(personalFolderPath);

            var subDirectories = personalFolderRootDirectory.GetDirectories();

            List<string> existingAssessments = new List<string>();
            foreach(DirectoryInfo di in subDirectories)
            {
                //Folder name is assumed to be tracking number and assessment file name is driven from common utility method.
                //make sure file and folder names are in sync.
                string assessmentMetadataFileName = Kalect.Services.Utilities.FileFolderUtility.GetAssessmentFileName(di.Name)+ ".json";
                var filePath = Path.Combine(di.FullName, assessmentMetadataFileName);
                if(File.Exists(filePath))
                {
                    existingAssessments.Add(System.IO.File.ReadAllText(filePath));
                }
            }


            return Task.FromResult<List<string>>(existingAssessments);
        }

        public bool DoesAssessmentMetadataExistsOnDevice(string folderName, string fileName)
        {
            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            documentsPath = documentsPath + "/" + folderName;
            string fileNameJson = fileName + ".json";
            var filePath = Path.Combine(documentsPath, fileNameJson);

            if (Directory.Exists(documentsPath))
            {
                if (File.Exists(filePath))
                {
                    return true;
                }
            }

            return false;
        }

        public void UpdateAssessmentMetadata(string assessmentMetadata, string folderName, string fileName)
        {
            var documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            documentsPath = documentsPath + "/" + folderName;
            string fileNameJson = fileName + ".json";
            var filePath = Path.Combine(documentsPath, fileNameJson);

            if (Directory.Exists(documentsPath))
            {
                //update assessments
                if (File.Exists(filePath))
                {
                    //read file
                    string existingAssessment = System.IO.File.ReadAllText(filePath);
                    if (existingAssessment.Equals(assessmentMetadata))
                    {
                        // no action at the moment
                    }
                    else
                    {
                        //if different then delete the existing file and create the new updated file.
                        //File.Delete(filePath);
                        File.WriteAllText(filePath, assessmentMetadata);

                        //Bubble Notification
                    }
                }
            }
            else
            {
                System.IO.Directory.CreateDirectory(documentsPath);
                File.WriteAllText(filePath, assessmentMetadata);
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

    }
}
