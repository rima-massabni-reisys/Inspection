using System;
using System.Collections.Generic;
using Kalect.Services.Entities;

namespace Kalect.Services.Interfaces
{
    public interface IAssessmentManager
    {
        List<AssessmentMetadataEntity> GetListOfAllAssignedAssessmentsFromDevice();
        List<AssessmentMetadataEntity> GetListOfAllAssignedAssessmentsFromServer();
        string GetAssignedAssessment(int id);

    }
}
