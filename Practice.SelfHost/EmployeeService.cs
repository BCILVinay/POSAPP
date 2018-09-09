using System.Collections.Generic ;
using System.Linq ;
using System.ServiceModel;
using System.ServiceModel.Description;
using System.ServiceModel.Web;
using System.Runtime.Serialization;
using System.ServiceModel.Activation;
using Practice.SelfHost.Data;

namespace Practice.SelfHost
{
    [AspNetCompatibilityRequirements(RequirementsMode= AspNetCompatibilityRequirementsMode.Allowed )]
   public  class EmployeeService: IEmployeeService 
    {
        
       public EmployeeInfo GetAllEmployeeDetails(EmployeeRequest request)
        {
            string LicenceKey = request.LicenceKey;

            return new EmployeeInfo(EmployeeData.Instance.EmployeeList.FirstOrDefault());
         // return  employeeInfo.EmployeeInfoList();
           
        }
      
        public Employee GetEmployee(int id)
        {
            IEnumerable<Employee> empList = EmployeeData.Instance.EmployeeList.Where(x => x.EmpId == id);

            if (empList != null)
                return empList.First<Employee>();
            else
                return null;
        }

     
       public void AddEmployee(Employee newEmp)
       {
           EmployeeData.Instance.Add(newEmp);
       }

       
        public void UpdateEmployee( Employee newEmp)
        {
            EmployeeData.Instance.Update(newEmp);
        }

      
         public void DeleteEmployee(string empId)
        {
            EmployeeData.Instance.Delete(System.Convert .ToInt32 (empId));
        }
    }
}
