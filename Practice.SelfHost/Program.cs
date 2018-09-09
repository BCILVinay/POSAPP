using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace Practice.SelfHost
{
    class Program
    {
        static void Main(string[] args)
        {
            #region MathService
            try
            {

                ServiceHost host = new ServiceHost(typeof(MathService));
                host.Open();
                Console.WriteLine("Service  Run: {0} , {1} : {2}", DateTime.Now, DateTime.UtcNow, DateTime.SpecifyKind(DateTime.UtcNow, DateTimeKind.Local));

            }
            catch (Exception ex)
            {
                Console.WriteLine("Math Service Exception : \n" + ex.Message);
            }
            #endregion

            #region EmployeeRestService
            try
            {

                ServiceHost restHost = new ServiceHost(typeof(EmployeeService));
                restHost.Open();

                Console.WriteLine("Employee Rest Service is running: {0}", DateTime.Now);
            }
            catch (Exception ex)
            {
                Console.WriteLine(" Empmloyee Rest Service Exception \n" + ex.Message);
            }
            #endregion

            #region CustomerService
            try
            {
                ServiceHost CustomerService = new ServiceHost(typeof(CustomerService));
                CustomerService.Open();
                Console.WriteLine("Customer Service is running.");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Customer Service Exception:\n" + ex.Message);
            }

            #endregion

            Console.ReadLine();


        }
    }
}
