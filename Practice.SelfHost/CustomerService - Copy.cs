using Practice.SelfHost.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practice.SelfHost
{
  public class CustomerService :ICustomerService
    {
        public Data.Customer GetCustumer(int customerId)
        {
           return CustomerData.Instanse.Customers.Find(p => p.CustomerId == customerId);
        }

        public void AddCustomer(Data.Customer customer)
        {
            CustomerData.Instanse.Customers.Add(customer);
        }
    }
}
