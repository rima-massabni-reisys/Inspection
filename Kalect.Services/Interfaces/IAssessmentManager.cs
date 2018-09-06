using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Kalect.Services.Entities;

namespace Kalect.Services.Interfaces
{
    public interface IAssessmentManager
    {
        Task<List<AssessmentMetadataEntity>> GetListOfAllAssignedAssessmentsFromDevice();
        List<AssessmentMetadataEntity> GetListOfAllAssignedAssessmentsFromServer();
        string GetAssignedAssessment(int id);

    }
}
