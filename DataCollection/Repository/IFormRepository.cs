using System.Collections.Generic;
using DataCollection.Repository.DataObjects;

namespace DataCollection.Repository
{
    public interface IFormRepository
    {
        FormInstanceData GetFormInstance(string trackingNumber, string friendlyName);
        List<FormInstanceData> GetAllForms(string folderName);
    }

}