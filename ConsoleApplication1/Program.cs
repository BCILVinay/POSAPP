using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{

    class Program
    {

        static void Main(string[] args)
        {

            ReferenceTypeCheck();

          //var v=  Singleton.Instance;
           // ABC a = new ABC();
           //var c = a.childObject;
            //TestDateTimeSaveConsept(null, string.Empty, string.Empty);
           // TestReaderNextResultSetConcept();
            //DateTime dt = new DateTime(1990, 10, 15);
            //DateOfBirth(dt);
            //logger();
            //  CallSingletonBasic();
            //  CheckMultiThreadInviroment();
            // SingletonLazyLoading();

            // GenericClassExample();




            //C1 c = new C1();
            //c.Id = 1;
            //c.Name = "FFF";
            //var c1 = Type.GetType("C1");

            //DataTypeLearn();
            //ClsFile file = new ClsFile();
            // file.Readfile();
            Console.WriteLine("Hello Word");
            Console.ReadLine();
        }


        #region Private Function Test Songleton

        private static void CallSingletonBasic()
        {
            Singleton obj = Singleton.Instance;
            obj.Println("First Object Creation");
            Singleton obj2 = Singleton.Instance;
            obj.Println("Second object Creation");
        }
        private static void CheckMultiThreadInviroment()
        {
            Parallel.Invoke(
                () => FirstObjectCreation(),
                () => SecondObjectCreation()
                );
        }
        private static void FirstObjectCreation()
        {
            Singleton obj = Singleton.Instance;
            //obj.Println("First Object Creation");
            Console.WriteLine("First object Creation");

        }
        private static void SecondObjectCreation()
        {
            Singleton obj2 = Singleton.Instance;
            Console.WriteLine("Second object Creation");

        }


        private static void SingletonLazyLoading()
        {
            Parallel.Invoke(
                () => FirstobjectWithLazyLoading(),
                () => SecondobjectWithLazyLoading()
                );
        }
        private static void FirstobjectWithLazyLoading()
        {
            var obj = SingletonLazy.Instance;
            Console.WriteLine("First Object Created");
        }
        private static void SecondobjectWithLazyLoading()
        {
            var obj = SingletonLazy.Instance;
            Console.WriteLine("Second Object Created");
        }

        private static void TestDateTimeSaveConsept(DateTime? OrderDate, string CompanyName, string EmployeeName)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ToString()))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = con;
                        cmd.CommandText = @"
INSERT INTO [dbo].[Order]
(
 [OrderDate]
,[CompanyName]
,[EmployeeName]
)
VALUES
(
@OrderDate
,@CompanyName
,@EmployeeName
)";
                        // cmd.CommandText = "USP_SaveOrder";
                        cmd.CommandType = CommandType.Text;
                        if (OrderDate == null)
                        {
                            cmd.Parameters.AddWithValue("@OrderDate", DBNull.Value);
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@OrderDate", OrderDate);
                        }
                        cmd.Parameters.AddWithValue("@CompanyName", CompanyName);
                        cmd.Parameters.AddWithValue("@EmployeeName", EmployeeName);
                        con.Open();
                        IDataReader reader = cmd.ExecuteReader();

                        while (reader.Read())
                        {


                            var xxx = reader.NextResult();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                string sc = ex.Message;
            }


        }

        private static void TestReaderNextResultSetConcept()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ToString()))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = con;

                        cmd.CommandText = "USP_GetOrder";
                        cmd.CommandType = CommandType.StoredProcedure;

                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        List<Order> orders = new List<Order>();
                        try
                        {

                            while (reader.Read())
                            {
                                Order order = new Order();
                                order.OrderId = reader["OrderId"] == DBNull.Value ? null : (Int32?)(reader["OrderId"]);
                                order.OrderDate = reader["OrderDate"] == DBNull.Value ? null : (DateTime?)(reader["OrderDate"]);
                                order.CustomerId = reader["CustomerId"] == DBNull.Value ? null : (Int32?)(reader["CustomerId"]);
                                order.CompanyName = reader["CompanyName"] == DBNull.Value ? string.Empty : Convert.ToString(reader["CompanyName"]);
                                order.EmpmloyeeName = reader["EmployeeName"] == DBNull.Value ? string.Empty : Convert.ToString(reader["EmployeeName"]);
                                orders.Add(order);
                            }

                        }
                        catch (Exception)
                        {
                        }
                      bool c =  reader.NextResult();
                        try
                        {
                            while (reader.Read())
                            {

                            }
                        }
                        catch (Exception ex)
                        {
                            string str = ex.Message;

                        }
                      
                    }
                }
            }
            catch (Exception ex)
            {
                string xt = ex.Message;
            }
        }

        #endregion


        #region  Generic class Example
        private static void GenericClassExample()
        {
            School school = InstanceFactory<School>.Instance;
            College college = InstanceFactory<College>.Instance;
        }

        #endregion

        #region Ststic Constructor

        private static void CallStaticConstructor()
        {
            Building building = new Building();
            building.Test("This is test method of static constructor");

            Building building1 = new Building();
            building1.Test(" Second Time of calling test method of static constructor");
        }
        private static void CallStaticConstructor1()
        {
            Building building = new Building();
            building.Test("This is test method of static constructor");

            Building building1 = new Building();
            building1.Test(" Second Time of calling test method of static constructor");
        }
        #endregion

        #region  Test my logger

        private static void logger()
        {
            for (long i = 0; i < 1000000000; i++)
            {
                try
                {
                    var t = new C1().GetName();
                    int x = Convert.ToInt32("");
                }
                catch (Exception ex)
                {

                    Logger.Log.Instance.LogException(ex);
                }
            }
        }
        #endregion

        public class cBase
        {
            public string cBaseName { get; set; }
        }
        public class C1:cBase
        {
            public int Id { get; set; }
            public string Name { get; set; }
            public string GetName()
            {
                throw new Exception("Invalid Name");
                return this.Id + "-" + this.Name;
            }
        }
        private static void DataTypeLearn()
        {
            sbyte b = 0;
            int x = default(int);
            int? y = default(int?);
            int j = new int();
            AREA r = (AREA)1;
            AREA? ar = default(AREA?);
            bool x11 = ar.HasValue;


            const int x1 = 666;
            char ch = (char)10;
            int v1 = (int)ch;
            int ch1 = (int)'\x000A';
            char xf = (char)ch1;
            float f1 = 0 / 0.0f;
            string st = "";


        }

        private static void DateOfBirth(DateTime BirthDate)
        {
            try
            {
                DateTime todayDate = DateTime.Today;
                var dt = todayDate.Subtract(BirthDate);
                int year = todayDate.Year;
                int month = todayDate.Month;
                int day = todayDate.Day;
                int CurrentDay = default(int);
                int CurrentMonth = default(int);
                int CurrentYear = default(int);
                if (day < BirthDate.Day)
                {
                    day = day + 30;
                    month = month - 1;
                }

                if (month < BirthDate.Month)
                {
                    month = month + 12;
                    year = year - 1;
                }
                CurrentDay = day - BirthDate.Day;
                CurrentMonth = month - BirthDate.Month;
                CurrentYear = year - BirthDate.Year;


            }
            catch (Exception)
            {

            }
        }

        private static void VirtualFunctionTest()
        {
            Animal an = new Animal();
            string s1 = an.Speak();
            Animal an1 = new Dog();
            string s2 = an1.Speak();

            IEnumerable<Animal> aa = new List<Dog>();

        }

        private static void ReferenceTypeCheck()
        {
            C1 obj = new C1 ();
            obj.Name ="Vinay kumar pandey" ;
            obj.cBaseName = "Base Name";
            cBase base1 = obj;
            base1.cBaseName = " new value Set";
           
        }

        private void XXX()
        {
            try
            {
                int x = 0;
            }
            finally
            {

            }

        }

        public enum AREA
        {

            left = 1,
            right = 2,
            up = 3,
            down = 4
        }

        public class Order
        {
            public int? OrderId { get; set; }

            public DateTime? OrderDate { get; set; }

            public int? CustomerId { get; set; }

            public string CompanyName { get; set; }

            public string EmpmloyeeName { get; set; }
        }
    }
}
