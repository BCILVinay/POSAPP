using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Configuration;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Configuration;
using System.Web.Mvc;

namespace Practice.MultilanguageMVC.Models
{
    public class Demo
    {
        [Display (Name ="Greetings",ResourceType= typeof(Resources.Resource))]
        public string Greetings { get; set; }
        [Display(Name = "Introduction", ResourceType = typeof(Resources.Resource))]
        public string Introduction { get; set; }
    }
    //public class MyController : Controller
    //{
    //    protected override IAsyncResult BeginExecuteCore(AsyncCallback callback, object state)
    //    {
    //        string _defaultLanguage = "en-us";
    //        var language = Request.UserLanguages[0] == null ? _defaultLanguage : Request.UserLanguages[0];
    //        System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(language);
    //        System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(language);
    //        return base.BeginExecuteCore(callback, state);
    //    }
    //}

    //public class GlobalHelper
    //{
    //    public static string CurrentCulture
    //    {
    //        get
    //        {
    //            return Thread.CurrentThread.CurrentUICulture.Name;
    //        }
    //    }

    //    public static string DefaultCulture
    //    {
    //        get
    //        {
    //            Configuration config = WebConfigurationManager.OpenWebConfiguration("/");
    //            GlobalizationSection section = (GlobalizationSection)config.GetSection("system.web/globalization");
    //            return section.UICulture;
    //        }
    //    }
    //}
    //public abstract class BaseController : Controller
    //{
    //    private static string _cookieLangName = "LangForMultiLanguageDemo";

    //    protected override void OnActionExecuting(ActionExecutingContext filterContext)
    //    {
    //        string cultureOnCookie = GetCultureOnCookie(filterContext.HttpContext.Request);
    //        string cultureOnURL = filterContext.RouteData.Values.ContainsKey("lang")
    //            ? filterContext.RouteData.Values["lang"].ToString()
    //            : GlobalHelper.DefaultCulture;
    //        string culture = (cultureOnCookie == string.Empty)
    //            ? (filterContext.RouteData.Values["lang"].ToString())
    //            : cultureOnCookie;

    //        if (cultureOnURL != culture)
    //        {
    //            filterContext.HttpContext.Response.RedirectToRoute("LocalizedDefault",
    //            new
    //            {
    //                lang = culture,
    //                controller = filterContext.RouteData.Values["controller"],
    //                action = filterContext.RouteData.Values["action"]
    //            });
    //            return;
    //        }

    //        SetCurrentCultureOnThread(culture);

    //        if (culture != MultiLanguageViewEngine.CurrentCulture)
    //        {
    //            (ViewEngines.Engines[0] as MultiLanguageViewEngine).SetCurrentCulture(culture);
    //        }

    //        base.OnActionExecuting(filterContext);
    //    }

    //    private static void SetCurrentCultureOnThread(string lang)
    //    {
    //        if (string.IsNullOrEmpty(lang))
    //            lang = GlobalHelper.DefaultCulture;
    //        var cultureInfo = new System.Globalization.CultureInfo(lang);
    //        System.Threading.Thread.CurrentThread.CurrentUICulture = cultureInfo;
    //        System.Threading.Thread.CurrentThread.CurrentCulture = cultureInfo;
    //    }

    //    public static String GetCultureOnCookie(HttpRequestBase request)
    //    {
    //        var cookie = request.Cookies[_cookieLangName];
    //        string culture = string.Empty;
    //        if (cookie != null)
    //        {
    //            culture = cookie.Value;
    //        }
    //        return culture;
    //    }

    //}
    //public class MultiLanguageViewEngine : RazorViewEngine
    //{
    //    private static string _currentCulture = GlobalHelper.CurrentCulture;

    //    public MultiLanguageViewEngine()
    //        : this(GlobalHelper.CurrentCulture)
    //    {
    //    }

    //    public MultiLanguageViewEngine(string lang)
    //    {
    //        SetCurrentCulture(lang);
    //    }

    //    public void SetCurrentCulture(string lang)
    //    {
    //        _currentCulture = lang;
    //        ICollection<string> arViewLocationFormats =
    //             new string[] { "~/Views/{1}/" + lang + "/{0}.cshtml" };
    //        ICollection<string> arBaseViewLocationFormats = new string[] { 
    //            @"~/Views/{1}/{0}.cshtml", 
    //            @"~/Views/Shared/{0}.cshtml"};
    //        this.ViewLocationFormats = arViewLocationFormats.Concat(arBaseViewLocationFormats).ToArray();
    //    }

    //    public static string CurrentCulture
    //    {
    //        get { return _currentCulture; }
    //    }
    //}
}