using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Practice.MVCAPP.Models;

namespace Practice.MVCAPP.BIZ
{
    public class CustomerBIZ
    {
      private  static List<Customer> customers = new List<Customer>();
        public List<Customer> GetAllCustomer()
        {
            try
            {
                if (customers.Count == 0)
                {
                    for (int i = 1; i <= 50; i++)
                    {
                        Customer customer = new Customer
                        {
                            CustomerID = Convert.ToInt32("1001") + i,
                            CustomerName = "Cust00" + i,
                            Address = "Custmer-Address: Address0" + i,
                            Phone = "001-002-005" + i
                        };
                        customers.Add(customer);
                    }
                }
                return customers;
            }
            catch
            {
                throw;
            }
        }

        public int AddNewCustomer(Customer customer)
        {
            try
            {
                customers.Add(customer);
                return 1;
            }
            catch 
            {
            }
            return 0;
            
        }
    }
}