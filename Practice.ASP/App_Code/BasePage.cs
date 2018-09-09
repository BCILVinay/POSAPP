using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;
using System.Web.UI;
using System.Threading;

namespace Practice.ASP_MultiLanguageApp.App_Code
{
    public class BasePage : System.Web.UI.Page
    {
        protected override void InitializeCulture()
        {
            string language = "en-us";

            if (Request.UserLanguages != null)
            {
                language = Request.UserLanguages[0];
            }
            

            //Check if PostBack is caused by Language DropDownList.
            if (Request.Form["__EVENTTARGET"] != null && Request.Form["__EVENTTARGET"].Contains("ddlLanguages"))
            {
                //Set the Language.
                language = Request.Form[Request.Form["__EVENTTARGET"]];
            }

            //Set the Culture.
            Thread.CurrentThread.CurrentCulture = new CultureInfo(language);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(language);
        }
    }
}