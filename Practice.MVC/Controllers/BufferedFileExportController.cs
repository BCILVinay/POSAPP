using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;

namespace Practice.MVC.Controllers
{
    public class BufferedFileExportController : Controller
    {
        string filepath = @"D:\Document\T11.txt"; //Server.MapPath(String.Format("{0}{1}", HttpUtility.UrlDecode(folder), name));
        
        //
        // GET: /BufferedFileExport/
        public ActionResult DownLoad()
        {
            string filename = "StreamTest.txt";
            Stream istream = null;
            byte[] buffer = new byte[1024];
            int length = default(int);
            long dataToread = default(long);
            FileStream file = new FileStream(filepath,FileMode.Open,FileAccess.Read,FileShare.Read);
            
                istream  = file;
                dataToread = istream.Length;
                
                Response.AddHeader("Accept-Ranges", "bytes");
                Response.ContentType = "text/html";
                Response.AddHeader("content-disposition", "attachment;filename=" + "st.zip");
                
                int startbyte = 0;

                if (!String.IsNullOrEmpty(Request.Headers["Range"]))
                {
                    //string[] range = Request.Headers["Range"].Split(new char[] { '=', '-' });
                    //startbyte = Int32.Parse(range[1]);
                    //istream.Seek(startbyte, SeekOrigin.Begin);

                   // Response.StatusCode = 206;
                    //Response.AddHeader("Content-Range", String.Format(" bytes {0}-{1}/{2}", startbyte, dataToread - 1, dataToread));
                }

                while (dataToread > 0)
                {
                    if (Response.IsClientConnected)
                    {
                      length=istream.Read(buffer, 0, buffer.Length);
                      Response.OutputStream.Write(buffer, 0, length);

                      Response.Flush();
                      buffer = new byte[buffer.Length];
                      dataToread = dataToread - buffer.Length;
                    }
                    else
                    {
                        dataToread = -1;
                    }
                
            }
            return View();
        }
	}
}