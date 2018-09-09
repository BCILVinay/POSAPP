using Practice.ASP_MultiLanguageApp.App_Code;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practice.ASP_MultiLanguageApp
{
    public partial class MultiLanguageForm : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton1.Checked)
            {
                Thread.CurrentThread.CurrentCulture = CultureInfo.GetCultureInfo("de-DE");
                Thread.CurrentThread.CurrentUICulture = CultureInfo.GetCultureInfo("de-DE");
                Page.Culture = "de-DE";
                Page.UICulture = "de-DE";
            }
            lblEngilish.Text = GetLocalResourceObject("langEnglish").ToString();
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.GetCultureInfo("fr-FR");
            Thread.CurrentThread.CurrentUICulture = CultureInfo.GetCultureInfo("fr-FR");
            Page.Culture = "fr-FR";
            Page.UICulture = "fr-FR";
            lblEngilish.Text = GetLocalResourceObject("langEnglish").ToString();
        }
    }
}