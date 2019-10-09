using System;
using Xamarin.Essentials;

namespace Kalect
{
    public static class DeviceProperty
    {

        public static bool IsPhone()
        {
            var idiom = DeviceInfo.Idiom;
            if (idiom.ToString().ToLower().Equals("phone"))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
