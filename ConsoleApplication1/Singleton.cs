using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    public class Singleton
    {
        private static Singleton _instance = null;
        private static int Counter = 0;
        private static readonly object objLock = new object(); // for use of lock in multithread inviroment.

        private Singleton()
        {
            Counter++;
            Console.WriteLine("Counter Value is" + Counter);
        }

        public static Singleton Instance
        {
            get{
 
            if (_instance == null)
                {
                    lock (objLock) // for use of prevent multiple instance of object in multi Threading inviroment.
                    {

                        if (_instance == null)
                        {
                            _instance = new Singleton();
                        }
                    }
                }

                return _instance;
            }
        }

        public void Println(string message)
        {
            Console.WriteLine(message + "-" + Counter);
        }


    }

    /// <summary>
    /// this example for singleton with lazy loading and egar loading 
    /// </summary>
    public class SingletonLazy
    {
        //  private static readonly SingletonLazy _instance = new SingletonLazy(); //  Eager loading  example. create only single object when class is loading
        private static readonly Lazy<SingletonLazy> _instance = new Lazy<SingletonLazy>(() => new SingletonLazy());     // Lazy Loading example is create object thread safe and single instance.
        private static int Counter = 0;
        private SingletonLazy()
        {
            Counter++;
            Console.WriteLine("Counter value is " + Counter);
        }

        public static SingletonLazy Instance
        {
            get
            {
                return _instance.Value;   // we  if  retrun only _instance that get error.
            }
        }
    }

    //public class ABC
    //{
    //    public ABC()
    //    {
    //        a1 a = new a1();
    //        this.childObject = a;
    //    }
    //    public a1 childObject { get; set; }
    //    class a1
    //    {
    //        public int x { get; set; }
    //        public a1()
    //        {

    //        }
    //    }
    //}

    #region Generic Class Example

    public class InstanceFactory<T> where T : class ,new()
    {
        private static T _obj = null;
        private static int counter = default(int);
        private InstanceFactory()
        {
            counter++;
            Console.WriteLine("Counter is " + counter);
        }

        public static T Instance
        {
            get
            {
                if (_obj == null)
                {
                    _obj = new T();
                }
                return _obj;
            }
        }
    }

    public class School
    {
        public int SchoolId { get; set; }
        public string SchoolName { get; set; }
        public string SchoolAddresh { get; set; }
        public School()
        {
        }
    }

    public class College
    {
        public int CollegeId { get; set; }
        public string CollegeName { get; set; }
        public string CollegeAddresh { get; set; }

        public College()
        {
        }
    }
    #endregion

    #region Static Constructor example
    public class Building
    {
        public int BuidingId { get; set; }
        static Building()
        {
            Console.WriteLine("Calling Static constructor");
        }
        public void Test( string message)
        {
            Console.WriteLine(message);
        }
    }


    #endregion


}

