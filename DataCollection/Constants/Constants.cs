using System;
namespace DataCollection
{
    public class Constants
    {
        public Constants()
        {
        }
    }

    public static class ComponentTypes
    {
        public static string YesNoSwitchView = "YesNoSwitchView";
        public static string LabelEditorView = "LabelEditorView";
        public static string CameraView = "CameraView";
        public static string AudioRecorderView = "AudioRecorderView";
    }

    public enum Mode
    {
        Edit =1,
        ReadOnly=2
    }
}
