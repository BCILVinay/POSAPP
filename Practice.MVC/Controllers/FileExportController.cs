﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ConsoleApplication1;
using System.IO ;

namespace Practice.MVC.Controllers
{
    public class FileExportController : Controller
    {
        public const string PATH = @"D:\StreamTest.txt";
        //
        // GET: /FileExport/

      
        public ActionResult ImageData()
        {
           
            return View();
        }
        public ActionResult Index()
        {
             var tem = @"D:\Document\T11.txt";
            
            byte[] block = new byte[961*1000*100];
            using (var p = System.IO.File.OpenRead(PATH))
            {
                int i = 0;
                while (true)
                {
                    
                    try
                    {
                      i=  p.Read(block, 0, block.Length);
                        Response.OutputStream.Write(block, 0, block.Length);
                    }
                    catch (Exception)
                    {
                       
                    }
                    if (i==0)
                    {
                        break;
                       
                    }
                   
                }
               
            }
            Response.Flush();
            Response.End();
            return View();

        }


        public ActionResult IndexPage()
        {
            //url : understand : https://stackoverflow.com/questions/16862782/streaming-large-video-files-net
            Video("D", "StreamTest.txt");
            return View();
        }

        public void Video(string folder, string name)
        {
            string filepath = @"D:\Document\T11.txt"; //Server.MapPath(String.Format("{0}{1}", HttpUtility.UrlDecode(folder), name));
            string filename = name;

            System.IO.Stream iStream = null;
            byte[] buffer = new Byte[4096];
            int length;
            long dataToRead;

            try
            {
                // Open the file.
                iStream = new System.IO.FileStream(filepath, System.IO.FileMode.Open,
                            System.IO.FileAccess.Read, System.IO.FileShare.Read);


                // Total bytes to read:
                dataToRead = iStream.Length;

                Response.AddHeader("Accept-Ranges", "bytes");
                Response.ContentType = "text/html";//MimeType.GetMIMEType(name);

                Response.AddHeader("Content-Disposition", "attachment;filename=" + name);
             

                int startbyte = 0;

                if (!String.IsNullOrEmpty(Request.Headers["Range"]))
                {
                    string[] range = Request.Headers["Range"].Split(new char[] { '=', '-' });
                    startbyte = Int32.Parse(range[1]);
                    iStream.Seek(startbyte, SeekOrigin.Begin);

                    Response.StatusCode = 206;
                    Response.AddHeader("Content-Range", String.Format(" bytes {0}-{1}/{2}", startbyte, dataToRead - 1, dataToRead));
                }

                while (dataToRead > 0)
                {
                    // Verify that the client is connected.
                    if (Response.IsClientConnected)
                    {
                        // Read the data in buffer.
                        length = iStream.Read(buffer, 0, buffer.Length);

                        // Write the data to the current output stream.
                        Response.OutputStream.Write(buffer, 0, buffer.Length);
                        // Flush the data to the HTML output.
                        Response.Flush();

                        buffer = new Byte[buffer.Length];
                        dataToRead = dataToRead - buffer.Length;
                    }
                    else
                    {
                        //prevent infinite loop if user disconnects
                        dataToRead = -1;
                    }
                }
            }
            catch (Exception ex)
            {
                // Trap the error, if any.
                Response.Write("Error : " + ex.Message);
            }
            finally
            {
                if (iStream != null)
                {
                    //Close the file.
                    iStream.Close();
                }
                Response.Close();
            }
        }

           
        }
	}
