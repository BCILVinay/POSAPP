using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    public class AppLogger
    {
        private string _fileName;
        private string _logFilePath;
        private int _fileSize = default(int);
        private int _daysInExpired = default(int);

        private StreamWriter _logWritter = default(StreamWriter);
        private string _defaultLogPath = string.Empty;
        private static int _ctr = default(int);


        public AppLogger()
        {
            _ctr = _ctr + 1;
            this._fileName = DateTime.Now.ToString("dd-MM-yyyy") + "_" + _ctr+".txt";
            this._defaultLogPath = AppDomain.CurrentDomain.BaseDirectory + "\\Log";
            this._fileSize = 5;
            this._daysInExpired = 10;
            this._defaultLogPath = Path.Combine(this._defaultLogPath, this._fileName);
        }

        public AppLogger(int fileSize, int DaysInExpire, string LogFileName, string LogFilePath)
        {
            this._fileSize = fileSize;
            this._daysInExpired = DaysInExpire;
            this._fileName = LogFileName;
            this._defaultLogPath = LogFilePath;
            this._defaultLogPath = Path.Combine(this._defaultLogPath, this._fileName);
        }
        public void Write(string message)
        {
            try
            {
                using (_logWritter = new StreamWriter(this._defaultLogPath, true, Encoding.ASCII, 1024))
                {
                    this._logWritter.WriteLine(message);
                }
                this.CreateNewLogFile();
            }
            catch
            {
            }

        }
        public void Write(Exception ex)
        {
            try
            {
                using (_logWritter = new StreamWriter(this._defaultLogPath, true, Encoding.ASCII, 1024))
                {
                    this._logWritter.WriteLine(ex.Message);
                }
                this.CreateNewLogFile();
            }
            catch
            {

            }
        }

        private void CreateNewLogFile()
        {
            try
            {
                FileInfo _fileInfo = new FileInfo(this._defaultLogPath);
                if (_fileInfo.Length >= (1024) * this._fileSize)
                {
                    _ctr = _ctr + 1;
                    if (_fileInfo.CreationTime.ToShortDateString() == DateTime.Today.AddDays(-1).ToShortDateString())
                    {
                        var directory = Directory.GetDirectories(this._defaultLogPath).FirstOrDefault();
                        if (directory != null)
                        {
                            this._defaultLogPath = DateTime.Now.ToString("dd-MM-yyyy")+ "_" + _ctr + ".txt";
                        }
                    }
                }
                DeleteLogfile();
            }
            catch
            {
            }
        }
        private void DeleteLogfile()
        {
            try
            {
                var _logFiles = Directory.GetFiles(this._defaultLogPath).Where(p => new FileInfo(p).CreationTime <= DateTime.Now.AddDays(-this._daysInExpired)).ToArray();

                if (_logFiles.Count() > 0)
                {
                    foreach (var file in _logFiles)
                    {
                        FileInfo info = new FileInfo(file);
                        info.Delete();
                    }

                }

            }
            catch(Exception ex)
            {
            }
        }
    }
}
