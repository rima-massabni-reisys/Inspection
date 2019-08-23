using System;
using System.Collections.Generic;
using DataCollection.Entities;
using DataCollection.Views.Components;
using Xamarin.Forms;

namespace DataCollection.Services
{
    public class LayoutGenerator
    {
        public Layout GenerateLayout(string trackingNumber)
        {
            var _formService = new FormService();
            var formsInstances = _formService.GetAllForms(trackingNumber);

            var FormModelLayout = new StackLayout();
            FormModelLayout.Orientation = StackOrientation.Vertical;

            foreach (FormInstance fi in formsInstances)
            {
                Label sectionName = new Label();
                sectionName.Text = fi.FriendlyName;
                sectionName.FontSize = 26;
                FormModelLayout.Children.Add(sectionName);

                BoxView line = new BoxView();
                line.HeightRequest = 5;
                line.Color = Color.FromHex("#EAEAEA");
                line.Margin = new Thickness(0, 10, 0, 0);
                FormModelLayout.Children.Add(line);

                foreach (FormGroup fg in fi.FormModelView.formgroups)
                {
                    Label boxView = new Label();
                    boxView.Text = fg.text;
                    boxView.FontSize = 22;
                    FormModelLayout.Children.Add(boxView);

                    //Component Selector. Need to be more robust
                    foreach (Component c in fg.components)
                    {
                        var formComponentLayout = new StackLayout();
                        formComponentLayout.Orientation = StackOrientation.Horizontal;

                        if (c.type.Equals(ComponentTypes.YesNoSwitchView))
                        {
                            YesNoSwitchView yesNo = new YesNoSwitchView(c, fi.FormData, Mode.ReadOnly);
                            formComponentLayout.Children.Add(yesNo);
                        }
                        else if (c.type.Equals(ComponentTypes.LabelEditorView))
                        {
                            LabelEditorView labelEditorView = new LabelEditorView(c, fi.FormData, Mode.ReadOnly);
                            formComponentLayout.Children.Add(labelEditorView);
                        }
                        else if (c.type.Equals(ComponentTypes.CameraView))
                        {
                            CameraView cameraView = new CameraView(c, fi.FormData, trackingNumber, Mode.ReadOnly);
                            formComponentLayout.Children.Add(cameraView);
                        }
                        else if (c.type.Equals(ComponentTypes.AudioRecorderView))
                        {
                            //AudioRecorderView audioRecorderView = new AudioRecorderView();//CameraView(c, formData);
                            VoiceMemoView audioRecorderView = new VoiceMemoView(c, fi.FormData, trackingNumber, Mode.ReadOnly);
                            formComponentLayout.Children.Add(audioRecorderView);
                        }

                        FormModelLayout.Children.Add(formComponentLayout);
                    }
                }
            }

            return FormModelLayout;
        }

        public Layout GenerateLayout(FormModel formModel, string formData)
        {
            var FormModelLayout = new StackLayout();
            FormModelLayout.Orientation = StackOrientation.Vertical;

            var formGroupLayout = new StackLayout();
            formGroupLayout.Orientation = StackOrientation.Vertical;

            //get groups
            foreach (FormGroup fg in formModel.formgroups)
            {
                Label boxView = new Label();
                boxView.Text = fg.text;
                boxView.FontSize = 22;
                FormModelLayout.Children.Add(boxView);
               
                //Component Selector. Need to be more robust
                foreach (Component c in fg.components)
                {
                    var formComponentLayout = new StackLayout();
                    formComponentLayout.Orientation = StackOrientation.Horizontal;

                    if (c.type.Equals(ComponentTypes.YesNoSwitchView))
                    {
                        YesNoSwitchView yesNo = new YesNoSwitchView(c, formData,Mode.ReadOnly);
                        formComponentLayout.Children.Add(yesNo);
                    }
                    else if (c.type.Equals(ComponentTypes.LabelEditorView))
                    {
                        LabelEditorView labelEditorView = new LabelEditorView(c, formData,Mode.ReadOnly);
                        formComponentLayout.Children.Add(labelEditorView);
                    }
                    else if (c.type.Equals(ComponentTypes.CameraView))
                    {
                        CameraView cameraView = new CameraView(c, formData, "12000001", Mode.ReadOnly);
                        formComponentLayout.Children.Add(cameraView);
                    }
                    else if (c.type.Equals(ComponentTypes.AudioRecorderView))
                    {
                        //AudioRecorderView audioRecorderView = new AudioRecorderView();//CameraView(c, formData);
                        VoiceMemoView audioRecorderView = new VoiceMemoView(c, formData, "12000001", Mode.ReadOnly);
                        formComponentLayout.Children.Add(audioRecorderView);
                    }

                    FormModelLayout.Children.Add(formComponentLayout);
                }
            }

            return FormModelLayout;
        }

        public Layout GenerateLayoutForSelectedFormGroup(FormGroup fg, string formData, string webAttachments, string assessmentTrackingNumber, ref Switch KeySwitch, string KeySwitchName = null)
        {
            var FormModelLayout = new StackLayout();
            FormModelLayout.Orientation = StackOrientation.Vertical;

            var formGroupLayout = new StackLayout();
            formGroupLayout.Orientation = StackOrientation.Horizontal;

            var formComponentLayout = new StackLayout();
            formComponentLayout.Orientation = StackOrientation.Vertical;

            Switch yesNoSwitch = null;
            Editor textComment = null;
            foreach (Component c in fg.components)
            {
                if (c.type.Equals(ComponentTypes.YesNoSwitchView))
                {
                    YesNoSwitchView yesNo = new YesNoSwitchView(c, formData);
                    formComponentLayout.Children.Add(yesNo);
                    yesNoSwitch = yesNo.switchView.sw;
                    if (c.id == KeySwitchName)
                    {
                        KeySwitch = yesNoSwitch;
                    }
                }
                else if (c.type.Equals(ComponentTypes.LabelEditorView))
                {
                    LabelEditorView labelEditorView = new LabelEditorView(c, formData);
                    formComponentLayout.Children.Add(labelEditorView);
                    textComment = labelEditorView.dataEntry;
                }
                else if (c.type.Equals(ComponentTypes.CameraView))
                {
                    CameraView cameraView = new CameraView(c, formData,assessmentTrackingNumber);
                    formComponentLayout.Children.Add(cameraView);
                }
                else if (c.type.Equals(ComponentTypes.AudioRecorderView))
                {
                    //AudioRecorderView audioRecorderView = new AudioRecorderView();//CameraView(c, formData);
                    VoiceMemoView audioRecorderView = new VoiceMemoView(c, formData, assessmentTrackingNumber);
                    formComponentLayout.Children.Add(audioRecorderView);
                }
            }

            if (fg.text == "A1" && yesNoSwitch != null && textComment != null)
            {
                if (!yesNoSwitch.IsToggled)
                {
                    textComment.IsEnabled = false;
                    textComment.Text = "";
                }
                yesNoSwitch.Toggled += (object sender, ToggledEventArgs e) => {
                    if (!e.Value)
                    {
                        textComment.IsEnabled = false;
                        textComment.Text = "";
                    }
                    else
                    {
                        textComment.IsEnabled = true;
                    }
                };
            }

            formComponentLayout.Children.Add(new WebAttachmentsView(webAttachments));

            FormModelLayout.Children.Add(formGroupLayout);
            FormModelLayout.Children.Add(formComponentLayout);

            return FormModelLayout;
        }

        /// <summary>
        /// This method is obsolete now and should be purged eventually.
        /// </summary>
        /// <returns>The content pages for carousel.</returns>
        /// <param name="formModel">Form model.</param>
        /// <param name="formData">Form data.</param>
        public List<ContentPage> GenerateContentPagesForCarousel(FormModel formModel, string formData)
        {
            List<ContentPage> contentPages = new List<ContentPage>();

            //get groups
            foreach (FormGroup fg in formModel.formgroups)
            {
                ContentPage page = new ContentPage();
                StackLayout pageStackLayout = new StackLayout();
                pageStackLayout.Orientation = StackOrientation.Vertical;

                //Component Selector. Need to be more robust
                foreach (Component c in fg.components)
                {
                    if (c.type.Equals(ComponentTypes.YesNoSwitchView))
                    {
                        YesNoSwitchView yesNo = new YesNoSwitchView(c, formData);
                        pageStackLayout.Children.Add(yesNo);

                    }
                    else if (c.type.Equals(ComponentTypes.LabelEditorView))
                    {
                        LabelEditorView labelEditorView = new LabelEditorView(c, formData);
                        pageStackLayout.Children.Add(labelEditorView);
                    }

                    page.Content = pageStackLayout;
                    contentPages.Add(page);
                }
            }

            return contentPages;
        }
    }
}
