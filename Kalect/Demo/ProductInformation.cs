using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Xamarin.Forms;

namespace Kalect.Demo
{
    public class Grouping<K, T> : ObservableCollection<T>
    {
        public K Key { get; private set; }

        public Grouping(K key, IList<T> items)
        {
            Key = key;
            foreach (var item in items)
                this.Items.Add(item);
        }

     
    }
    public class Products
    {

        public Products(string _productCode, string _deviceName)
        {
            this.ProductCode = _productCode;
            this.DeviceName = _deviceName;
        }
        public string ProductCode
        {
            get;
        }

        public string DeviceName
        {
            get;
        }

        public string SearchProperty
        {
            get
            {
                return ProductCode + DeviceName;
            }
        }

        public string CircleText
        {
            get {
                return ProductCode[0].ToString() + DeviceName[0].ToString();
            }
        }
        public string NameSort
        {
            get
            {
                if (string.IsNullOrWhiteSpace(ProductCode) || ProductCode.Length == 0)
                    return "?";

                return ProductCode[0].ToString().ToUpper();
            }
        }
    }

    public class ProductInformation : ContentPage
    {
        ListView productsList;
        IList<Products> productList;
        SearchBar productBar;
        public ObservableCollection<Grouping<string, Products>> ProductGrouped { get; set; }


        void SearchBard_TextChanged(Object sender, EventArgs e)
        {
            var keyword = productBar.Text;
            if (string.IsNullOrEmpty(keyword)) keyword = string.Empty;

            //Use linq to sorty our monkeys by name and then group them by the new name sort property
            var sorted = from p in productList
                    where p.SearchProperty.ToLower().Contains(keyword.ToLower())
                         orderby p.ProductCode
                         group p by p.NameSort into PGroup
                         //select PGroup;
                         select new Grouping<string, Products>(PGroup.Key, PGroup.ToList());


            //create a new collection of groups
            ProductGrouped = new ObservableCollection<Grouping<string, Products>>(sorted);


            productsList.ItemsSource = ProductGrouped;
        }
        public ProductInformation()
        {


            productList = plist();

            var productItemTemplate = new DataTemplate(typeof(ProductCell));

            //Use linq to sorty our monkeys by name and then group them by the new name sort property
            var sorted = from p in productList
                         orderby p.ProductCode
                         group p by p.NameSort into PGroup
                         //select PGroup;
                                  select new Grouping<string, Products>(PGroup.Key, PGroup.ToList());


            //create a new collection of groups
            ProductGrouped = new ObservableCollection<Grouping<string, Products>>(sorted);

            this.BackgroundImage = "GrayBackground.png";

            Title = "Product Information";
            NavigationPage.SetHasNavigationBar(this, true);

            productsList = new ListView();
            productBar = new SearchBar();
            productBar.TextChanged += SearchBard_TextChanged;

            productsList.ItemsSource = ProductGrouped;
            productsList.ItemTemplate = productItemTemplate;
            productsList.HasUnevenRows = true;
            productsList.IsGroupingEnabled = true;
            productsList.GroupDisplayBinding = new Binding("Key");
            productsList.GroupShortNameBinding = new Binding("Key");
            //productsList.MinimumHeightRequest = 500;

            Content = new StackLayout
            {   BackgroundColor = Color.FromHex("#F8F9F9"),
                Orientation = StackOrientation.Vertical,
                Padding = new Thickness(25, 25, 25, 0),
                Children = { productBar,productsList
                }
            };
        }

        private IList<Products>  plist()
        {
            IList<Products> productList = new List<Products>();
               productList.Add(new Products("BRW", "Protector, Dental"));
            productList.Add(new Products("BRX", "Stool, Anesthesial"));
            productList.Add(new Products("BRY", "Cabinet, Table And Tray, Anesthesia"));
            productList.Add(new Products("BSE", "Analyzer, Gas, Helium"));
            productList.Add(new Products("BSL", "Algestimeter, Powered"));
         

productList.Add(new Products("CIJ","Saccharogenic, Amylase"));

productList.Add(new Products("CIK","Radial Diffusion, Amylase"));

productList.Add(new Products("CIL","Cresol Red Colorimetry, Carbon-Dioxide"));

productList.Add(new Products("CIN","Electrophoretic Separation, Alkaline Phosphatase Isoenzymes"));

productList.Add(new Products("CIO","Thymolphthalein Monophosphate, Alkaline Phosphatase Or Isoenzymes"));

productList.Add(new Products("CIQ","Diazo, Ast/Sgot"));

productList.Add(new Products("CIS","Hydrazone Colorimetry, Ast/Sgot"));

productList.Add(new Products("CIT","Nadh Oxidation/Nad Reduction, Ast/Sgot"));

productList.Add(new Products("CIW","Starch-Dye Bound Polymer, Amylase"));

productList.Add(new Products("CIX","Bromcresol Green Dye-Binding, Albumin"));

productList.Add(new Products("CIY","Radioimmunoassay, Androsterone"));

productList.Add(new Products("CIZ","Radioimmunoassay, Androstenedione"));

productList.Add(new Products("CJA","Amyloclastic, Amylase"));

productList.Add(new Products("CJB","Chromatographic Separation/Radioimmunoassay, Aldosterone"));

productList.Add(new Products("CJC","Fructose-1, 6-Diphosphate And Nadh (U.V.), Aldolase"));

productList.Add(new Products("CJD","Nitrosalicylate Reduction, Amylase"));

productList.Add(new Products("CJE","Nitrophenylphosphate, Alkaline Phosphatase Or Isoenzymes"));

productList.Add(new Products("CJF","Tetrabromophenolphthalein, Albumin"));

productList.Add(new Products("CJG","Tetrabromo-M-Cresolsulfonphthalein, Albumin"));

productList.Add(new Products("CJH","Thymol Blue Monophosphate, Alkaline Phosphatase Or Isoenzymes"));

productList.Add(new Products("CJI","Disodium Phenylphosphate, Alkaline Phosphatase Or Isoenzymes"));

productList.Add(new Products("CJJ","Diazo, Alt/Sgpt"));

productList.Add(new Products("CJK","Phenolphthalein Phosphate, Alkaline Phosphatase Or Isoenzymes"));

productList.Add(new Products("CJL","Beta Glycerophosphate, Alkaline Phosphatase Or Isoenzymes"));

productList.Add(new Products("CJM","Radioimmunoassay, Aldosterone"));

productList.Add(new Products("CJN","Acid Phosphatase, Nitrophenylphosphate"));

productList.Add(new Products("CJO","Alpha-Naphthyl Phosphate, Alkaline Phosphatase Or Isoenzymes"));

productList.Add(new Products("BZC","Calculator, Pulmonary Function Data"));

productList.Add(new Products("BZD","Ventilator, Non-Continuous (Respirator)"));

productList.Add(new Products("BZE","Heater, Breathing System W/Wo Controller (Not Humidifier Or Nebulizer"));

productList.Add(new Products("BZG","Spirometer, Diagnostic"));

productList.Add(new Products("BZH","Meter, Peak Flow, Spirometry"));

productList.Add(new Products("BZK","Spirometer, Monitoring (W/Wo Alarm)"));

productList.Add(new Products("BZL","Computer, Oxygen-Uptake"));

productList.Add(new Products("BZM","Calculator, Pulmonary Function Interpretor (Diagnostic)"));

productList.Add(new Products("BZN","Cart, Emergency, Cardiopulmonary (Excluding Equipment)"));

productList.Add(new Products("BZO","Set, Tubing And Support, Ventilator (W Harness)"));

productList.Add(new Products("KMS","Phenolphthalein Colorimetry, Carbon-Dioxide"));

productList.Add(new Products("KNK","Acid, Uric, Uricase (Colorimetric)"));

productList.Add(new Products("KQN","Radioassay, Angiotensin Converting Enzyme"));

productList.Add(new Products("KQO","Automated Urinalysis System"));

productList.Add(new Products("KQP","Fluorescent Proc. (Qual.), Galactose-1-Phosphate Uridyl Transferase"));

productList.Add(new Products("KWW","Radioimmunoassay, Cholyglycine, Bile Acids"));

productList.Add(new Products("KWX","Radioimmunoassay, Conjugated Sulfalithocholic (Slcg) Acid, Bile Acids"));

productList.Add(new Products("LBR","Ldl & Vldl Precipitation, Hdl"));

productList.Add(new Products("LBS","Ldl & Vldl Precipitation, Cholesterol Via Esterase-Oxidase, Hdl"));

productList.Add(new Products("LBT","Electrophoresis, Cholesterol Via Esterase-Oxidase, Hdl"));

productList.Add(new Products("LCH","Tonometer (Calibration And Q.C. Of Blood-Gas Instruments), Clinical"));

productList.Add(new Products("MMI","Immunoassay Method, Troponin Subunit"));

productList.Add(new Products("MPG","Urinary Carbohydrate Analysis Kit"));

productList.Add(new Products("MQM","Bilirubin (Total And Unbound) In The Neonate Test System"));

productList.Add(new Products("MRG","System, Test, Vitamin D"));

productList.Add(new Products("PSM","Refractometer For Donor Testing"));

productList.Add(new Products("PTC","Uric Acid Test System For At Home Prescription Use"));

productList.Add(new Products("PYP","Low-Density Lipoprotein (Ldl) Cholesterol Sub-Fraction Test"));

productList.Add(new Products("PYV","Hospital Continuous Glucose Monitoring System"));

productList.Add(new Products("PZI","Prescription Use Blood Glucose Meter For Near-Patient Testing"));

productList.Add(new Products("QBJ","Integrated Continuous Glucose Monitoring System, Factory Calibrated"));

productList.Add(new Products("QBZ","Automated Platform Consisting Of Software And Instrumentation For Pooling And/Or Lysing Donor Blood, Serum, Or Plasma"));

productList.Add(new Products("QCC","Insulin Pump Therapy Adjustment Calculator For Healthcare Professionals"));

productList.Add(new Products("JYQ","Loop, Wire"));

productList.Add(new Products("JYR","Nipper, Malleus"));

productList.Add(new Products("JYS","Perforator, Ear-Lobe"));

productList.Add(new Products("JYT","Pick, Microsurgical Ear"));

productList.Add(new Products("JYW","Press, Vein"));

productList.Add(new Products("JYX","Punch, Attic"));

productList.Add(new Products("JYY","Rasp, Ear"));

productList.Add(new Products("JYZ","Rod, Measuring Ear"));

productList.Add(new Products("EZS","Appliance, Colostomy, Disposable"));

productList.Add(new Products("EZT","Pacemaker, Bladder"));

productList.Add(new Products("EZW","Stimulator, Electrical, Implantable, For Incontinence"));

productList.Add(new Products("EZY","Device, Incontinence, Mechanical/Hydraulic"));

productList.Add(new Products("FAD","Stent, Ureteral"));

productList.Add(new Products("FAE","Prosthesis, Penile"));

productList.Add(new Products("FAF","Prosthesis, Testicular"));

productList.Add(new Products("FAH","Dilator, Urethral, Mechanical"));

productList.Add(new Products("FAJ","Cystoscope And Accessories, Flexible/Rigid"));

productList.Add(new Products("FAK","Panendoscope (Gastroduodenoscope)"));
            return productList;

        }
}

     public class ProductCell 
        :ViewCell {

        public ProductCell()
        {
            StackLayout cellVerticalLayout = new StackLayout();
            cellVerticalLayout.Orientation = StackOrientation.Vertical;

            StackLayout rowWrapper = new StackLayout();
            rowWrapper.Orientation = StackOrientation.Horizontal;

            StackLayout rowContentWrapper = new StackLayout();
            rowContentWrapper.Orientation = StackOrientation.Vertical;

            Button newButton = new Button();
            //newButton.WidthRequest = 50;
            //newButton.HeightRequest = 50;
            //newButton.CornerRadius = 5;
           
            newButton.SetBinding(Button.TextProperty, "CircleText");
            newButton.BackgroundColor = Color.FromHex("#A74631");
            newButton.HorizontalOptions = LayoutOptions.Start;
            //newButton.Margin = new Thickness(150, 0, 0, 0);
            //newButton.FontSize = 50;
            newButton.TextColor = Color.White;
            newButton.Margin = new Thickness(0, 10, 0, 10);
            rowWrapper.Children.Add(newButton);

            Label Code = new Label();
            Code.FontSize = 20;
            Code.FontAttributes = FontAttributes.Bold;
            Code.SetBinding(Label.TextProperty, "ProductCode");
            Code.Margin = new Thickness(25, 0, 0, 0);

            rowContentWrapper.Children.Add(Code);


            Label Name = new Label();
            //Name.BackgroundColor = Color.WhiteSmoke;
            //Name.TextColor = Color.WhiteSmoke;
            Name.SetBinding(Label.TextProperty, "DeviceName");
            Name.Margin = new Thickness(25, 0, 0, 0);

            rowContentWrapper.Children.Add(Name);

            rowWrapper.Children.Add(rowContentWrapper);
            cellVerticalLayout.Children.Add(rowWrapper);

            View = cellVerticalLayout;
        }
    }
}
