using Practice.SelfHost.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace Practice.SelfHost
{
    [MessageContract(IsWrapped = true, WrapperName = "EmployeeRequest", WrapperNamespace = "http://vinay.com")]
   public class EmployeeRequest
    {
        [MessageHeader]
        public string LicenceKey { get; set; }

        [MessageBodyMember]
        public int EmployeeId { get; set; }
    }

    [MessageContract(IsWrapped = true, WrapperName = "EmployeeInfo", WrapperNamespace="http://vinay.com" )]
    public class EmployeeInfo
    {

        public EmployeeInfo()
        {
        }
        public EmployeeInfo(Employee employee)
        {
            this.EmpId = employee.EmpId;
            this.Fname = employee.Fname;
            this.Lname = employee.Lname;
            this.Salary = employee.Salary;
            this.Age = employee.Age;
            this.EmployeeType = employee.EmployeeType;
            this.JoinDate = employee.JoinDate;
            this.Designation = employee.Designation;  
        }

       
        public List<EmployeeInfo> EmployeeInfoList(List<Employee> employees)
        {
            List<EmployeeInfo> employeeInfoList = new List<EmployeeInfo>();
            foreach (var employee in employees)
            {
                
                this.EmpId = employee.EmpId;
                this.Fname = employee.Fname;
                this.Lname = employee.Lname;
                this.Salary = employee.Salary;
                this.Age = employee.Age;
                this.EmployeeType = employee.EmployeeType;
                this.JoinDate = employee.JoinDate;
                this.Designation = employee.Designation;
                employeeInfoList.Add(this);
            }
            return employeeInfoList;
        }

        [MessageBodyMember(Order=1 , Name="EmpId" , Namespace="http://vinay.com/Employee")]
        public int EmpId { get; set; }

        [MessageBodyMember(Order = 2, Name = "Fname", Namespace = "http://vinay.com/Employee")]
        public string Fname { get; set; }

        [MessageBodyMember(Order = 3, Name = "Lname", Namespace = "http://vinay.com/Employee")]
        public string Lname { get; set; }

        [MessageBodyMember(Order = 4, Name = "JoinDate", Namespace = "http://vinay.com/Employee")]
        public DateTime JoinDate { get; set; }

        [MessageBodyMember(Order = 5, Name = "Age", Namespace = "http://vinay.com/Employee")]
        public int Age { get; set; }

        [MessageBodyMember(Order = 6, Name = "Salary", Namespace = "http://vinay.com/Employee")]
        public int Salary { get; set; }

        [MessageBodyMember(Order = 7, Name = "Designation", Namespace = "http://vinay.com/Employee")]
        public string Designation { get; set; }

        [MessageBodyMember(Order = 8, Name = "EmployeeType", Namespace = "http://vinay.com/Employee")]
        public EmployeeType EmployeeType { get; set; }

    }
}
