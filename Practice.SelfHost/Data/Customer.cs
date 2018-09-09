using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace Practice.SelfHost.Data
{
    [DataContract]
    public class Customer
    {
        [DataMember]
        public int CustomerId { get; set; }
        [DataMember]
        public string CustomerName { get; set; }
        [DataMember]
        public DateTime DateOfBirth { get; set; }
        [DataMember]
        public CustomerType CustomerType { get; set; }
    }

    [DataContract]
    public enum CustomerType
    {
        [EnumMember(Value = "Retail")]
        Retail = 0,
        [EnumMember(Value = "Corporate")]
        Corporate = 1
    }

    public class CustomerData
    {
        private static readonly CustomerData _Instance = new CustomerData();
        private CustomerData()
        {
        }

        private List<Customer> _customers = new List<Customer> { 
         new  Customer{ CustomerId =1 , CustomerName ="Cust01" , CustomerType =CustomerType.Retail, DateOfBirth =DateTime.Now.AddDays(-20)},
         new  Customer{ CustomerId =2 , CustomerName ="Cust02" , CustomerType =CustomerType.Retail, DateOfBirth =DateTime.Now.AddMonths(-20)},
         new  Customer{ CustomerId =3 , CustomerName ="Cust03" , CustomerType =CustomerType.Retail, DateOfBirth =DateTime.Now.AddMonths(-20)},
         new  Customer{ CustomerId =4 , CustomerName ="Cust04" , CustomerType =CustomerType.Corporate, DateOfBirth =DateTime.Now.AddYears(-20)},
         new  Customer{ CustomerId =5 , CustomerName ="Cust05" , CustomerType =CustomerType.Corporate, DateOfBirth =DateTime.Now.AddDays(-20)},
         new  Customer{ CustomerId =6 , CustomerName ="Cust06" , CustomerType =CustomerType.Corporate, DateOfBirth =DateTime.Now.AddDays(-20)}
        };

        public static CustomerData Instanse
        {
            get
            {
                return _Instance;
            }
        }

        public List<Customer> Customers
        {
            get
            {
                return _customers;
            }
        }

    }

}
