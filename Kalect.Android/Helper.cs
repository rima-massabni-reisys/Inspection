using Android.Content;
using Android.Support.Design.Widget;
using TabbedPageWithNavigationPage.Droid.Resources;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android.AppCompat;
using Kalect.Demo;
using Android.Content.Res;
using Xamarin.Essentials;
using Android.Views;
using Xamarin.Forms.Platform.Android;

[assembly: ExportRenderer(typeof(TabbedPage), typeof(MainTabbedPage))]
namespace TabbedPageWithNavigationPage.Droid.Resources
{

    public class MainTabbedPage : TabbedPageRenderer, TabLayout.IOnTabSelectedListener
    {
        //  private MainTabbedPage _page;
        private TabbedPage _page;


        protected override void OnElementChanged(ElementChangedEventArgs<TabbedPage> e)
        {
            base.OnElementChanged(e);
            if (e.NewElement != null)
            {
                _page = (TabbedPage)e.NewElement;
            }
            else
            {
                _page = (TabbedPage)e.OldElement;
            }
        }
        public MainTabbedPage(Context context) : base(context)
        {
           // var cin = context;
        }
      
        async  void TabLayout.IOnTabSelectedListener.OnTabReselected(TabLayout.Tab tab)
        {
            if (tab == null)
            {
                return;
            }
            

            switch (tab.Text)
            {
                case "Dashboard":
                    if (_page?.CurrentPage?.Navigation != null)
                        await _page.CurrentPage.Navigation.PushAsync(new InspectionList());

                    break;
             
                default:
                    break;
            }
        }
    }
}