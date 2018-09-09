using Practice.SelfHost.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace Practice.SelfHost
{
    [ServiceContract]
   public interface ICustomerService
    {
        [OperationContract]
       Customer GetCustumer(int customerId);
        
       [OperationContract]
       void  AddCustomer(Customer customer);

       

    }
}
