using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using DataCollection.Repository.DataObjects;

namespace DataCollection.Repository
{
    public interface IFormRepository
    {
        FormInstanceData GetFormInstance(string trackingNumber, string friendlyName);
        List<FormInstanceData> GetAllForms(string folderName);
        Task UpdateFormData(Guid reportId, string formData);
    }

}