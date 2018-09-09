using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;
using Practice.MVCAPP.Models;
using Practice.MVCAPP.BIZ;

namespace Practice.MVCAPP.Controllers
{
    public class MVCCRUDController : Controller
    {
        //
        // GET: /MVCCRUD/
        public ActionResult Index(int? page)
        {

            return View();
        }

        public  ActionResult GetCustomer(int? page)
        {
            List<Customer> customers = new List<Customer>();
            try
            {
                CustomerBIZ custBiz = new CustomerBIZ();
                customers = custBiz.GetAllCustomer();
            }
            catch (Exception ex)
            {
                // use logging error
                Response.Write(ex.Message);
            }

            return PartialView("_PartialCustomers", customers.ToPagedList(page ?? 1, 5));
        }

        public ActionResult GetCustomerWithSeraching(SearchCustomer search ,int? page)
        {
            List<Customer> customers = new List<Customer>();
            try
            {
                CustomerBIZ custBiz = new CustomerBIZ();
                customers = custBiz.GetAllCustomer();
            }
            catch (Exception ex)
            {
                // use logging error
                Response.Write(ex.Message);
            }

            return PartialView("_PartialCustomers", customers.ToPagedList(page ?? 1, 5));
        }

        [HttpGet]
        public PartialViewResult CreateCustomer()
        {
            Customer customer = new Customer();
            return PartialView(customer);
        }

        [HttpPost]
        public ActionResult CreateCustomer([Bind(Include="CustomerId, CustomerName,Phone,Address")]Customer customer)
        {
            try
            {
                if (customer.CustomerName == "ABC")
                {
                    ModelState.AddModelError("CustomerName", "Customer Name can not be ABC");
                }
                if (ModelState.IsValid)
                {
                    CustomerBIZ custBiz = new CustomerBIZ();
                    custBiz.AddNewCustomer(customer);
                    return Json(new { success = true });
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            return PartialView(customer);
        }

        [HttpGet]
        public PartialViewResult Register()
        {
            Practice.MVCAPP.Models.Register register = new Practice.MVCAPP.Models.Register();
            return PartialView("_Register",register);
        }

        [HttpPost]
        public ActionResult Register(Register register)
        {
            if (ModelState.IsValid)
            {
                return Json(new {success=true });
            }
            return PartialView(register);
        }


    }
}