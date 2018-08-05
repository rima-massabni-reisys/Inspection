using System;
using System.Collections.Generic;

namespace Kalect.Services.Entities
{
    public class AssessmentEntity
    {
        public List<FormEntity> Forms { get; set; }
        public string AssessmentMetadata { get; set; }
    }
}
