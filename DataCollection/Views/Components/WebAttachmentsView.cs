using System;
using System.Collections.Generic;
using System.IO;
using DataCollection.Entities;
//using Foundation;
using Newtonsoft.Json;
//using QuickLook;
//using UIKit;
using Xamarin.Forms;
using System.ComponentModel;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
//using Foundation;

namespace DataCollection.Views.Components
{
    public class WebAttachmentsView : ContentView
    {
        public WebAttachmentsView(string webAttachments)
        {
            List<WebAttachmentEntity> attachments = JsonConvert.DeserializeObject<List<WebAttachmentEntity>>(webAttachments);

            StackLayout layout = new StackLayout()
            {
                Orientation = StackOrientation.Vertical,
                Padding = new Thickness(25, 25, 25, 35)
            };

            layout.Children.Add(new Label
            {
                Text = "Attachments"
            });

            Grid subLayout = new Grid
            {
                FlowDirection = FlowDirection.LeftToRight,
                Padding = new Thickness(25, 25, 25, 25)
            };

            int gridMaxColumns = 4;
            var idiom = DeviceInfo.Idiom;
            if (idiom.ToString().ToLower().Equals("phone"))
            {
                gridMaxColumns = 2;
            }
            for (int i = 0; i < gridMaxColumns; i++)
            {
                subLayout.ColumnDefinitions.Add(new ColumnDefinition());
            }

            layout.Children.Add(subLayout);

            int counter = 0;
            foreach (var attInfo in attachments)
            {
                StackLayout attachmentLayout = new StackLayout
                {
                    Orientation = StackOrientation.Vertical,
                    Padding = new Thickness(25, 25, 25, 12)
                };

                string image;
                switch (attInfo.Type)
                {
                    case "worksheet":
                        image = "attachment_xls.png";
                        break;
                    case "word":
                        image = "attachment_doc.png";
                        break;
                    case "pdf":
                        image = "attachment_pdf.png";
                        break;
                    default:
                        image = "attachment_txt.png";
                        break;
                }

                Button btn = new Button
                {
                    ImageSource = image,
                    WidthRequest = 50,
                    HeightRequest = 50,
                    BackgroundColor = Color.Transparent
                };
                btn.Clicked += ((object sender, EventArgs e) => ShowAttachment(attInfo));

                Label lbl = new Label
                {
                    Text = attInfo.Name,
                    FontSize = 14,
                    HorizontalTextAlignment = TextAlignment.Center,
                    Margin=new Thickness(0,20,0,0)
                };
                lbl.GestureRecognizers.Add(new TapGestureRecognizer
                {
                    Command = new Command(() =>
                    {
                        ShowAttachment(attInfo);
                    })
                });

                attachmentLayout.Children.Add(btn);
                attachmentLayout.Children.Add(lbl);
                subLayout.Children.Add(attachmentLayout, counter % gridMaxColumns, (int)Math.Floor(counter / gridMaxColumns * 1.0));

                counter++;
            }

            Content = layout;
        }

        private void ShowAttachment(WebAttachmentEntity attInfo)
        {
            //Device.OpenUri(new Uri("http://fdainsp-ehbs-web.reisys.io/HVISSubmission/" + attInfo.Path.Replace("\\", "/")));

            //var options = new UIApplicationOpenUrlOptions();
            //options.OpenInPlace = true;
            //options.UniversalLinksOnly = true;

            //bool canOpen = UIApplication.SharedApplication.CanOpenUrl(NSUrl.FromFilename(attInfo.LocalPath));
            //UIApplication.SharedApplication.OpenUrl(NSUrl.FromFilename(attInfo.LocalPath), options, ((done) => {
            //    canOpen = done;
            //}));

            //Device.OpenUri(new Uri("ms-word:file://" + attInfo.LocalPath));

            //UIApplication.SharedApplication.OpenUrl(NSUrl.FromString($"http:file%3A//{attInfo.LocalPath}"));

            //string name = Path.GetFileName(attInfo.LocalPath);
            //Device.BeginInvokeOnMainThread(() =>
            //{
            //    QLPreviewItemFileSystem prevItem = new QLPreviewItemFileSystem(name, attInfo.LocalPath);
            //    QLPreviewController previewController = new QLPreviewController();
            //    previewController.DataSource = new PreviewControllerDS(prevItem);
            //    //UIApplication.SharedApplication.KeyWindow.RootViewController.PresentViewController(previewController, true, null);
            //    GetVisibleViewController().PresentViewController(previewController, true, null);
            //});

          //  var PreviewController = UIDocumentInteractionController.FromUrl(NSUrl.FromFilename(attInfo.LocalPath));
            //PreviewController.Delegate = new UIDocumentInteractionControllerDelegateClass(UIApplication.SharedApplication.KeyWindow.RootViewController);
         //   PreviewController.Delegate = new UIDocumentInteractionControllerDelegateClass(GetVisibleViewController());
            Device.BeginInvokeOnMainThread(() =>
            {
               // PreviewController.PresentPreview(true);
            });

            //var viewer = UIDocumentInteractionController.FromUrl(NSUrl.FromFilename(attInfo.LocalPath));
            ////viewer.PresentOpenInMenu(new RectangleF(0, -260, 320, 320), this.View, true);
            //viewer.PresentOpenInMenu(new CoreGraphics.CGRect(100, 100, 100, 25), null, true);
        }

        //private UIViewController GetVisibleViewController(UIViewController controller = null)
        //{
        //    controller = controller ?? UIApplication.SharedApplication.KeyWindow.RootViewController;

        //    if (controller.PresentedViewController == null)
        //        return controller;

        //    if (controller.PresentedViewController is UINavigationController)
        //    {
        //        return ((UINavigationController)controller.PresentedViewController).VisibleViewController;
        //    }

        //    if (controller.PresentedViewController is UITabBarController)
        //    {
        //        return ((UITabBarController)controller.PresentedViewController).SelectedViewController;
        //    }

        //    return GetVisibleViewController(controller.PresentedViewController);
        //}

        //public class UIDocumentInteractionControllerDelegateClass : UIDocumentInteractionControllerDelegate
        //{
        //    UIViewController ownerVC;

        //    public UIDocumentInteractionControllerDelegateClass(UIViewController vc)
        //    {
        //        ownerVC = vc;
        //    }

        //    public override UIViewController ViewControllerForPreview(UIDocumentInteractionController controller)
        //    {
        //        return ownerVC;
        //    }

        //    public override UIView ViewForPreview(UIDocumentInteractionController controller)
        //    {
        //        return ownerVC.View;
        //    }
        //}

        //public class PreviewControllerDS : QLPreviewControllerDataSource
        //{
        //    private QLPreviewItem _item;

        //    public PreviewControllerDS(QLPreviewItem item)
        //    {
        //        _item = item;
        //    }

        //    public override IQLPreviewItem GetPreviewItem(QLPreviewController controller, System.nint index)
        //    {
        //        return _item;
        //    }

        //    public override System.nint PreviewItemCount(QLPreviewController controller)
        //    {
        //        return 1;
        //    }
        //}

        //public class QLPreviewItemFileSystem : QLPreviewItem
        //{
        //    string _fileName, _filePath;

        //    public QLPreviewItemFileSystem(string fileName, string filePath)
        //    {
        //        _fileName = fileName;
        //        _filePath = filePath;
        //    }

        //    public override string ItemTitle
        //    {
        //        get
        //        {
        //            return _fileName;
        //        }
        //    }

        //    public override NSUrl ItemUrl
        //    {
        //        get
        //        {
        //            return NSUrl.FromFilename(_filePath);
        //        }
        //    }
        //}
    }
}