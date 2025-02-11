﻿using System;
namespace Kalect.Services.Utilities
{
    public static class Extension
    {
        public static string TimeAgo(this DateTime dateTime)
        {
            string result = string.Empty;
            var timeSpan = DateTime.Now.Subtract(dateTime);

            if (timeSpan <= TimeSpan.FromSeconds(60))
            {
                result = string.Format("{0} seconds ago", timeSpan.Seconds);
            }
            else if (timeSpan <= TimeSpan.FromMinutes(60))
            {
                result = timeSpan.Minutes > 1 ?
                    String.Format("updated about {0} minutes ago", timeSpan.Minutes) :
                    "updated about a minute ago";
            }
            else if (timeSpan <= TimeSpan.FromHours(24))
            {
                result = timeSpan.Hours > 1 ?
                    String.Format("updated about {0} hours ago", timeSpan.Hours) :
                    "updated about an hour ago";
            }
            else if (timeSpan <= TimeSpan.FromDays(30))
            {
                result = timeSpan.Days > 1 ?
                    String.Format("updated about {0} days ago", timeSpan.Days) :
                    "yesterday";
            }
            else if (timeSpan <= TimeSpan.FromDays(365))
            {
                result = timeSpan.Days > 30 ?
                    String.Format("updated about {0} months ago", timeSpan.Days / 30) :
                    "updated about a month ago";
            }
            else
            {
                result = timeSpan.Days > 365 ?
                                 String.Format("", timeSpan.Days / 365) :
                                              "";
                    //String.Format("Last Update Not Available", timeSpan.Days / 365) :
                    //             "Last Update Not Available";
            }

            return result;
        }
    }
}
