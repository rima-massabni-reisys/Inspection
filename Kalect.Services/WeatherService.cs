using System;
using System.Net.Http;
using Newtonsoft.Json.Linq;

namespace Kalect.Services
{
    public class WeatherService
    {
        public WeatherService()
        {
        }

        public  string GetWeather(string city, string state)
        {
            var client = new HttpClient();
            string cityState = city + "," + state;
            var response = client.GetStringAsync("https://query.yahooapis.com/v1/public/yql?q=select wind from weather.forecast where woeid in (select woeid from geo.places(1) where text='chicago, il')&format=json&callback=callbackFunction").Result;
            //var response = client.GetStringAsync("http://hsa-is2-uat8.amer.reisystems.com/handbookwebapi/api/kalectMetadata").Result;
           
            return response;
        }

        public string GetWeather(string cityCommaState)
        {
            var client = new HttpClient();
            //string query = "select item.condition.text from weather.forecast where woeid in (select woeid from geo.places(1) where text='"+cityCommaState+"')";
            //var response = client.GetStringAsync("https://query.yahooapis.com/v1/public/yql?q="+query+"&format=json").Result;
            var response = client.GetStringAsync("https://samples.openweathermap.org/data/2.5/weather?q='" + cityCommaState + "'&appid=b6907d289e10d714a6e88b30761fae22").Result;
            //var response = client.GetStringAsync("http://hsa-is2-uat8.amer.reisystems.com/handbookwebapi/api/kalectMetadata").Result;
            dynamic data = JObject.Parse(response);
            string weatherCondition = data.query.results.channel.item.condition.text;

            return weatherCondition;
        }
    }
}
