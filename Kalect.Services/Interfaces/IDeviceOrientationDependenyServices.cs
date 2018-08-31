using System;
using Kalect.Services.Entities;

namespace Kalect.Services.Interfaces
{
    public interface IDeviceOrientationDependenyServices
    {
        DeviceOrientation GetOrientation();
    }
}
