using System;
using DataCollection.Entities;
using DataCollection.Repository;
using DataCollection.Services;
using Newtonsoft.Json;
using Xamarin.Forms;

namespace Kalect.Demo
{

    public class InspectionHistoryReview : ContentPage
    {
        FormRepository _formRepository = new FormRepository();
        LayoutGenerator _layoutGenerator = new LayoutGenerator();

        public InspectionHistoryReview(string trackingNumber)
        {
            this.BackgroundImage = "GrayBackground.png";

            Title = "Assessment History Review Page";

            //Form Header Label
            Label formTitle = new Label();
            formTitle.Text = "Review";
            formTitle.FontSize = 36;
            formTitle.Margin = new Thickness(0, 0, 0, 15);
            formTitle.TextColor = Color.FromHex("#B0B0B0");

            // var formInstanceData = _formRepository.GetFormInstance(trackingNumber, "CellCultureandFermentation");
            //var formHistory = _layoutGenerator.GenerateLayout(JsonConvert.DeserializeObject<FormModel>(formInstanceData.FormModel), formInstanceData.FormData);
            this.IsBusy = false;
            var formHistory = _layoutGenerator.GenerateLayout(trackingNumber);
            Content = new ScrollView
            {
                Content = new StackLayout
                {
                    HorizontalOptions = LayoutOptions.StartAndExpand,
                    Padding = new Thickness(25, 25, 25, 0),
                    Children = {
                    formTitle,
                    formHistory
                    }
                }
            };

        }
    }
}
