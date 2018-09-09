using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    /// <summary>
    /// Solid Design pattern Interface seggrigation.
    /// </summary>
   public  interface IPrinter
    {
        string Print(string content);
        string PhotoCopy(string content);

    }
   public interface IFaxPrinter
   {
        string FaxContent(string content);
   }

    

}
