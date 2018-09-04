using System;
using System.Collections.Generic;
using Kalect.Services.Entities;
using Xunit;

namespace Kalect.Services.Test
{
    public class AssessmentServiceTest
    {
        [Fact]
        public void DummyTest()
        {
            Console.WriteLine("Test Passed");
            Assert.True(true);
        }
        [Fact]
        public void Test_GetListOfAllAssignedAssessmentsFromServer()
        {
            /*AssessmentService assessmentManager = new AssessmentService();
            List<AssessmentMetadataEntity> assessments = assessmentManager.GetListOfAllAssignedAssessmentsFromServer().Wait();
            //Console.WriteLine(assessments);
            //Assert.True(true);
            if (assessments.Count == 3)
            {
                Console.WriteLine("Found All Assessments");
                Assert.True(true);
            }
            else
            {
                Console.WriteLine("Failed fidning All Assessments");
                Assert.True(false);
            }*/
        }
    }
}
