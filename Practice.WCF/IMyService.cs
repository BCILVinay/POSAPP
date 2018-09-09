using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace Practice.WCF
{
    [ServiceContract()]
    public interface IMyService
    {
        [OperationContract]
        int MyMethod();
    }


    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single)]
    public class MyService : IMyService
    {
        static int mcounter = 0;
        public int MyMethod()
        {
            mcounter++;
            return mcounter;
            //Do something
        }
    }
}
