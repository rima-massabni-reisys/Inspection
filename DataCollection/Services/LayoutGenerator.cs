using System;
using System.Collections.Generic;
using DataCollection.Entities;
using DataCollection.Views.Components;
using Xamarin.Forms;

namespace DataCollection.Services
{
    public class LayoutGenerator
    {
        public LayoutGenerator()
        {
        }

        public Layout GenerateLayout(FormModel formModel, string formData)
        {
            var FormModelLayout = new StackLayout();
            FormModelLayout.Orientation = StackOrientation.Vertical;

            var formGroupLayout = new StackLayout();
            formGroupLayout.Orientation = StackOrientation.Horizontal;

            var formComponentLayout = new StackLayout();
            formComponentLayout.Orientation = StackOrientation.Vertical;

            //get groups
            foreach (FormGroup fg in formModel.formgroups)
            {
                FormGroupBoxView boxView = new FormGroupBoxView(fg.text);
                formGroupLayout.Children.Add(boxView);

                //Component Selector. Need to be more robust
                foreach (Component c in fg.components)
                {
                    if (c.type.Equals(ComponentTypes.YesNoSwitchView))
                    {
                        YesNoSwitchView yesNo = new YesNoSwitchView(c, formData);
                        formComponentLayout.Children.Add(yesNo);
                    }
                    else if (c.type.Equals(ComponentTypes.LabelEditorView))
                    {
                        LabelEditorView labelEditorView = new LabelEditorView(c, formData);
                        formComponentLayout.Children.Add(labelEditorView);
                    }
                    else if(c.type.Equals(ComponentTypes.CameraView))
                    {
                        CameraView cameraView = new CameraView(c, formData);
                        formComponentLayout.Children.Add(cameraView);
                    }
                }
            }

            //FormModelLayout.Children.Add(formTitle);
            FormModelLayout.Children.Add(formGroupLayout);
            FormModelLayout.Children.Add(formComponentLayout);


            return FormModelLayout;
        }

        public Layout GenerateLayoutForSelectedFormGroup(FormGroup fg, string formData)
        {
            var FormModelLayout = new StackLayout();
            FormModelLayout.Orientation = StackOrientation.Vertical;

            var formGroupLayout = new StackLayout();
            formGroupLayout.Orientation = StackOrientation.Horizontal;

            var formComponentLayout = new StackLayout();
            formComponentLayout.Orientation = StackOrientation.Vertical;

            //get groups
            //foreach (FormGroup fg in formModel.formgroups)
            //{
            //    FormGroupBoxView boxView = new FormGroupBoxView(fg.text);
            //    formGroupLayout.Children.Add(boxView);

            //Component Selector. Need to be more robust
            foreach (Component c in fg.components)
            {
                if (c.type.Equals(ComponentTypes.YesNoSwitchView))
                {
                    YesNoSwitchView yesNo = new YesNoSwitchView(c, formData);
                    formComponentLayout.Children.Add(yesNo);
                }
                else if (c.type.Equals(ComponentTypes.LabelEditorView))
                {
                    LabelEditorView labelEditorView = new LabelEditorView(c, formData);
                    formComponentLayout.Children.Add(labelEditorView);
                }
                else if (c.type.Equals(ComponentTypes.CameraView))
                {
                    CameraView cameraView = new CameraView(c, formData);
                    formComponentLayout.Children.Add(cameraView);
                }
                else if (c.type.Equals(ComponentTypes.AudioRecorderView))
                {
                    AudioRecorderView audioRecorderView = new AudioRecorderView();//CameraView(c, formData);
                    formComponentLayout.Children.Add(audioRecorderView);
                }

            }
            //}

            //FormModelLayout.Children.Add(formTitle);
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

            //var FormModelLayout = new StackLayout();
            //FormModelLayout.Orientation = StackOrientation.Vertical;

            //var formGroupBarLayout = new StackLayout();
            //formGroupBarLayout.Orientation = StackOrientation.Horizontal;

            //get groups
            foreach (FormGroup fg in formModel.formgroups)
            {
                ContentPage page = new ContentPage();
                StackLayout pageStackLayout = new StackLayout();
                pageStackLayout.Orientation = StackOrientation.Vertical;

                //FormGroupBoxView boxView = new FormGroupBoxView(fg.text);
                //formGroupBarLayout.Children.Add(boxView);


                //Component Selector. Need to be more robust
                foreach (Component c in fg.components)
                {
                    if (c.type.Equals(ComponentTypes.YesNoSwitchView))
                    {
                        YesNoSwitchView yesNo = new YesNoSwitchView(c, formData);

                        /*contentPages.Add(
                            new ContentPage()
                            {
                                Content = new StackLayout
                                {
                                    Children = { yesNo }

                                }
                            }
                        );*/
                        pageStackLayout.Children.Add(yesNo);

                    }
                    else if (c.type.Equals(ComponentTypes.LabelEditorView))
                    {
                        LabelEditorView labelEditorView = new LabelEditorView(c, formData);
                        //formComponentLayout.Children.Add(labelEditorView);
                        /*contentPages.Add(
                            new ContentPage()
                            {
                                Content = new StackLayout
                                {
                                    Children = { labelEditorView }

                                }
                            }
                        );*/
                        pageStackLayout.Children.Add(labelEditorView);
                    }
                    else if (c.type.Equals(ComponentTypes.CameraView))
                    {
                        CameraView cameraView = new CameraView(c, formData);
                        //formComponentLayout.Children.Add(cameraView);
                        /*contentPages.Add(
                            new ContentPage()
                            {
                                Content = new StackLayout
                                {
                                    Children = { cameraView }
                                }
                            }
                        );*/
                        pageStackLayout.Children.Add(cameraView);
                    }

                    page.Content = pageStackLayout;
                    contentPages.Add(page);
                }
            }

            //FormModelLayout.Children.Add(formTitle);
            //FormModelLayout.Children.Add(formGroupLayout);
            //FormModelLayout.Children.Add(formComponentLayout);


            return contentPages;
        }

    }

}
