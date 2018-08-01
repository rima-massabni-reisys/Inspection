using System;
using Xamarin.Forms;
using DataCollection.Views.Components;

namespace DataCollection.Services
{
    public class ComponentSelector : IComponentSelector
    {
        public ComponentSelector()
        {
        }

        Layout IComponentSelector.GenerateContent()
        {
            throw new NotImplementedException();
        }
    }
}
