﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Practice.MVCAPP.Views.MVCCRUD
{
    public class FileUploadController : Controller
    {
        //
        // GET: /FileUpload/
        public ActionResult Index()
        {
            return View();
        }

                  
        public ActionResult UploadFiles()
        {
            string FileName = "";
            List<string> uploadedfile = new List<string>();
            HttpFileCollectionBase files = Request.Files;
            for (int i = 0; i < files.Count; i++)
            {
                //string path = AppDomain.CurrentDomain.BaseDirectory + "Uploads/";    
                //string filename = Path.GetFileName(Request.Files[i].FileName);    

                HttpPostedFileBase file = files[i];
                string fname;

                // Checking for Internet Explorer    
                if (Request.Browser.Browser.ToUpper() == "IE" || Request.Browser.Browser.ToUpper() == "INTERNETEXPLORER")
                {
                    string[] testfiles = file.FileName.Split(new char[] { '\\' });
                    fname = testfiles[testfiles.Length - 1];
                }
                else
                {
                    fname = file.FileName;
                    FileName = file.FileName;
                }

                // Get the complete folder path and store the file inside it.    
                fname = Path.Combine(Server.MapPath("~/Uploads/"), fname);
                file.SaveAs(fname);
                uploadedfile.Add(fname);
            }
            return Json(uploadedfile, JsonRequestBehavior.AllowGet);  
        }
	}
}