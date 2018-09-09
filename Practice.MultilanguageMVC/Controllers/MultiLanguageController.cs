using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Practice.MultilanguageMVC.Controllers;

namespace Practice.MultilanguageMVC.Controllers
{
    public class MultiLanguageController : BaseController
    {
        //
        // GET: /MultiLanguage/
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ChangeLanguage(string lang)
        {
            new SiteLanguages().SetLanguage(lang);
            return RedirectToAction("Index", "MultiLanguage");
            
        }
	}
}