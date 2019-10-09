using System;
using Kalect.Android.DependencyServices;
using Kalect.Services.Entities;
using Kalect.Services.Interfaces;
using Xamarin.Essentials;
//using UIKit;
using Xamarin.Forms;

[assembly: Dependency(typeof(DeviceOrientationDependencyServices))]
namespace Kalect.Android.DependencyServices
{
    public class DeviceOrientationDependencyServices : IDeviceOrientationDependenyServices
    {
        public DeviceOrientation GetOrientation()
        {
            var mainDisplayInfo = DeviceDisplay.MainDisplayInfo;

            // Orientation (Landscape, Portrait, Square, Unknown)
           // var deviceorientation = mainDisplayInfo.Orientation;


           var currentOrientation = mainDisplayInfo.Orientation;
            bool isPortrait = currentOrientation == DisplayOrientation.Portrait;
              

          //  bool isPortrait = true;
            return isPortrait ? DeviceOrientation.Portrait : DeviceOrientation.Landscape;
        }
    }
}
