using System;
using Xamarin.Forms;

namespace DataCollection.Services
{
    public interface IComponentSelector
    {
        Layout GenerateContent();
    }
}
