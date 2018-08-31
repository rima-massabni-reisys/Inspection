using System;
using Kalect.iOS.DependencyServices;
using Kalect.Services.Entities;
using Kalect.Services.Interfaces;
using UIKit;
using Xamarin.Forms;

[assembly: Dependency(typeof(DeviceOrientationDependencyServices))]
namespace Kalect.iOS.DependencyServices
{
    public class DeviceOrientationDependencyServices : IDeviceOrientationDependenyServices
    {
        public DeviceOrientation GetOrientation()
        {
            var currentOrientation = UIApplication.SharedApplication.StatusBarOrientation;
            bool isPortrait = currentOrientation == UIInterfaceOrientation.Portrait
                || currentOrientation == UIInterfaceOrientation.PortraitUpsideDown;

            return isPortrait ? DeviceOrientation.Portrait : DeviceOrientation.Landscape;
        }
    }
}
