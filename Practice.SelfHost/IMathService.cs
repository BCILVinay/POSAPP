using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;

namespace Practice.SelfHost
{
    [ServiceContract]
    public interface IMathService
    {

        [OperationContract]

        int GetNextValue();
    }

    public class MathService : IMathService
    {
        static int myCounter = 0;
        public int GetNextValue()
        {
            myCounter++;
            return myCounter;
        }
    }
}
