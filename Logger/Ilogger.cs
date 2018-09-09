using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logger
{
   public interface Ilogger
    {
       string FilePath { get; set; }
       int FileSize { get; set; }

       void LogException(Exception errorMessage);
       void LogException(string errorMessage);
      
    }
}
