using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication2
{
    class Program
    {
        private static string _typeMask = typeof(Program).FullName.Replace("Program", @"{0}");
        static void Main(string[] args)
        {
            
            //if (type != null)
            //    return Activator.CreateInstance(type) as T;
            //else
            //    throw new NotImplementedException(typeName);

            C1 c = new C1();
            c.Id = 1;
            c.Name = "FFF";
            var typeName = string.Format(_typeMask, c.GetType().Name.Substring(1));
            var type = Type.GetType(typeName);

        }
    }

    public class C1
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string GetName()
        {
            return this.Id + "-" + this.Name;
        }
    }
}
