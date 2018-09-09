using System;
using System.IO;
using System.Reflection;
using System.Text;


namespace Logger
{
    public class Log : Ilogger
    {
        private static Log _instance = null;
        private static readonly object obj = new object();
        private string filename = string.Format("{0}_{1}.txt", "Error", DateTime.Now.ToString("ddMMyyyy"));
        private DateTime PreviousDate = default(DateTime);
        private  int fileIncrement = 0;

        public string FilePath{get;set;}
        public int FileSize {get;set;}
        private Log()
        {
            FileSize = 5; // default 5 mb;
            // FilePath = string.Format("{0}/{1}", AppDomain.CurrentDomain.BaseDirectory, filename);
            PreviousDate = DateTime.Today;
            GenerateNewLogFile();
        }
        public static Log Instance
        {
            get
            {
                if (_instance == null)
                {
                    lock (obj)
                    {
                        _instance = new Log();
                    }
                }
                return _instance;
            }
        }
        public void LogException(Exception errorMessage)
        {
            try
            {
                string LogerHeader = "Error Occured";
               
                using (StreamWriter logWriter = new StreamWriter(FilePath, true))
                {
                    MethodBase m = MethodBase.GetCurrentMethod();
                    logWriter.WriteLine(string.Format("------{0}----{1}\n", LogerHeader, DateTime.Now));
                    logWriter.WriteLine(m.Name+"\t"+errorMessage);
                    logWriter.WriteLine("\n------End Exception Here-------\n");
                    
                    logWriter.Flush();
                }
                GenerateNewLogFile();

            }
            catch
            {

            }
        }

        public void LogException(string errorMessage)
        {
            try
            {
                string LogerHeader = "Error Occured";

                using (StreamWriter logWriter = new StreamWriter(FilePath, true))
                {
                    
                    logWriter.WriteLine(string.Format("------{0}----{1}\n", LogerHeader, DateTime.Now));
                    logWriter.WriteLine(errorMessage);
                    logWriter.WriteLine("\n------End Exception Here-------\n");

                    logWriter.Flush();
                }
                GenerateNewLogFile();

            }
            catch
            {

            }
        }

        private void GenerateNewLogFile()
        {

            if (fileIncrement == 0 )
            {
                string defaultLogPath = string.Format("{0}",string.Concat(AppDomain.CurrentDomain.BaseDirectory,"Log")) ;
                CreateLogFolder(defaultLogPath);
                this.FilePath = string.Format("{0}/{1}",string.Concat(AppDomain.CurrentDomain.BaseDirectory,"Log"), filename);
               
            }

            FileInfo logInfo = new FileInfo(this.FilePath);
            if (logInfo.Exists)
            {
                if (logInfo.Length >= 1000000) // 5 MB
                {
                    if (!IsEquelDate())
                    {
                        this.PreviousDate = DateTime.Today;
                        fileIncrement = 0;
                    }

                    fileIncrement = fileIncrement + 1;
                    string pathwithoutExt = string.Empty;
                    pathwithoutExt = Path.GetFileNameWithoutExtension(this.FilePath);
                    if (fileIncrement > 1)
                    {
                        pathwithoutExt = pathwithoutExt.Substring(0, (pathwithoutExt.LastIndexOf('_')));
                    }
                    string logDirectory = Path.GetFullPath(this.FilePath).Replace(this.filename, "");
                    this.filename = string.Concat(string.Format("{0}_{1}", pathwithoutExt, fileIncrement), Path.GetExtension(this.FilePath));
                    this.FilePath = string.Format("{0}{1}", logDirectory, this.filename);
                }
            }
        }

        private void CreateLogFolder(string logPath)
        {
            try
            {
                DirectoryInfo info = new DirectoryInfo(logPath);
                if (!info.Exists)
                {
                    Directory.CreateDirectory(logPath);
                }
            }
            catch (Exception)
            {
                
                throw;
            }
        }

        private bool IsEquelDate()
        {
            if (PreviousDate == DateTime.Today)
            {
                return true;
            }
            return false;
        }

    }
}
