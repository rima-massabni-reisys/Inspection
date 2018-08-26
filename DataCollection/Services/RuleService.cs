using System;
using System.Collections.Generic;
using System.Linq;
using DataCollection.Entities;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json.Schema;

namespace DataCollection.Services
{
    public class RuleService
    {
        public RuleService()
        {
        }

        public List<ValidationEntity> Validate(string trackingNumber)
        {
            List<ValidationEntity> validations = new List<ValidationEntity>();

            FormService formService = new FormService();
            List<FormInstance> formInstances = formService.GetAllForms(trackingNumber);


            foreach(FormInstance formInstance in formInstances)
            {
                ValidationEntity validationEntity = new ValidationEntity();
                validationEntity.FriendlyName = formInstance.FriendlyName;

                //Validate
                JObject fd = JObject.Parse(formInstance.FormData);
                IList<string> messages;
                JSchema schema = JSchema.Parse(formInstance.ValidationSchema);
                bool valid = fd.IsValid(schema, out messages);

                IList<string> errorMessages = messages.ToArray();

                validationEntity.Messages = errorMessages.ToList<string>();

                validations.Add(validationEntity);
            }

            return validations;

        }
    }
}
