using System;
using System.Collections.Generic;
using Kalect.Services.Interfaces;
using Xunit;
using Kalect.Services;
using Kalect.Services.Entities;

namespace Kalect.Services.Test
{
    public class AssessmentManagerTest
    {
        [Fact]
        public void DummyTest()
        {
            Console.WriteLine("Test Passed");
            Assert.True(true);
        }
        [Fact]
        public void Test_GetListOfAllAssignedAssessments()
        {
            AssessmentManager assessmentManager = new AssessmentManager();
            List<AssessmentMetadataEntity> assessments =  assessmentManager.GetListOfAllAssignedAssessments();
            //Console.WriteLine(assessments);
            //Assert.True(true);
            if(assessments.Count == 3)
            {
                Console.WriteLine("Found All Assessments");
                Assert.True(true);
            }
            else
            {
                Console.WriteLine("Failed fidning All Assessments");
                Assert.True(false);
            }
        }
    }
}
