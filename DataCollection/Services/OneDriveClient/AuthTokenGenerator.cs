using System;
using System.Collections.Generic;
using System.Globalization;
using System.Security.Cryptography;
using System.Text;

namespace DataCollection.Services.OneDrive
{
    static class AuthTokenGenerator
    {
        public static string Encrypt(string clientId, string clientSecret, DateTime expiration)
        {
            using (var encoder = new HMACSHA512(Encoding.UTF8.GetBytes(clientSecret)))
            {
                var dataToSign = clientId + "\n" + expiration.ToString("O", CultureInfo.InvariantCulture);
                var hash = encoder.ComputeHash(Encoding.UTF8.GetBytes(dataToSign));
                var signature = Convert.ToBase64String(hash);
                return string.Format("uid={0}&ex={1:o}&sn={2}", clientId, expiration, signature);
            }
        }


        public static string Encrypt()
        {
            using (var encoder = new HMACSHA512(Encoding.UTF8.GetBytes(Configuration.ClientSecret)))
            {
                var dataToSign = Configuration.ClientId + "\n" + Configuration.ExpirationDate.ToString("O", CultureInfo.InvariantCulture);
                var hash = encoder.ComputeHash(Encoding.UTF8.GetBytes(dataToSign));
                var signature = Convert.ToBase64String(hash);
                return string.Format("uid={0}&ex={1:o}&sn={2}", Configuration.ClientId, Configuration.ExpirationDate, signature).Trim();
            }
        }

    }
}
