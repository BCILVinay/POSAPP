using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;

namespace Practice.MultilanguageMVC
{
    public class SiteLanguages
    {
        public static List<Languages> AvailableLanguages = new List<Languages>
        {
            new Languages { LangCultureName ="hi" , LangFullName ="Hindi"},
            new Languages { LangCultureName ="fr", LangFullName ="French"},
            new Languages { LangCultureName ="en" , LangFullName ="English"}
        };
        public static bool IsLanguageAvailable(string lang)
        {
            return AvailableLanguages.Where(p => p.LangCultureName.Equals(lang)) != null ? true : false;
        }
        public static string GetDefaultLanguage()
        {
            return AvailableLanguages[0].LangCultureName;
        }
        public void SetLanguage(string lang)
        {
            if (!IsLanguageAvailable(lang))
            {
                lang = GetDefaultLanguage();
            }
            var cultureInfo = new CultureInfo(lang);
            Thread.CurrentThread.CurrentUICulture = cultureInfo;
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(cultureInfo.Name);
            HttpCookie langCookie = new HttpCookie("culture",lang);
            langCookie.Expires = DateTime.Now.AddYears(1);
            HttpContext.Current.Response.Cookies.Add(langCookie);
        }
    }

    public class Languages
    {
        public string LangFullName { get; set; }
        public string LangCultureName { get; set; }
    }
}