using Practice.ASP_MultiLanguageApp.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Practice.ASP_MultiLanguageApp
{
    public partial class TestMultiLanguage : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var str =System.Globalization.CultureInfo.GetCultures(System.Globalization.CultureTypes.AllCultures);
            string d = string.Empty;
        }
    }
}