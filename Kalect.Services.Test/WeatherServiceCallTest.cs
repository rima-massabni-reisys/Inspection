using System;
using Xunit;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace Kalect.Services.Test
{
    public class WeatherServiceCall
    {
        public WeatherServiceCall()
        {
        }

        [Fact]
        public void Test_GetWeatherServiceCall()
        {
            WeatherService weather = new WeatherService();
            var resp =  weather.GetWeather("Herndon, VA");
            Console.WriteLine(resp);
            dynamic data = JObject.Parse(resp);
            Console.WriteLine(data.query.results.channel.item.condition.text);
        }
    }
}
