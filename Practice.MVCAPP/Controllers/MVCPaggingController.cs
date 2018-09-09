using Practice.MVCAPP.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;

namespace Practice.MVCAPP.Controllers
{
    public class MVCPaggingController : Controller
    {
        //
        // GET: /MVCPagging/
        public ActionResult Index(int? page, string sortBy)
        {
            ViewBag.OrderId = String.IsNullOrEmpty(sortBy) ? "OrderId desc" : "";
            ViewBag.EmployeeName = sortBy == "EmployeeName" ? "EmployeeName desc" : "EmployeeId";
            List<Order> data = new List<Order>();
               data = GetOrderList();
           data = OrderBy(data, sortBy);
            return View(data.ToPagedList(page ?? 1, 3));
        }

        public ActionResult PaggingWithAjax(int? page)
        {
            var obj = GetOrderList().ToPagedList(page??1 ,3) ;
            return PartialView("_PartialOrder", obj);
        }


        public ActionResult Create()
        {
            return PartialView("Create", new Customer());
        }

        private List<Order> GetOrderList()
        {
            List<Order> orders = new List<Order>();
            for (int i = 0; i < 50; i++)
            {
                Order order = new Order()
                {
                    OrderId = (i + 1),
                    OrderDate = DateTime.UtcNow.AddDays((i + 1)),
                    CompanyName = "Company" + (i + 1),
                    CustomerId = ("1000" + (i + 1)),
                    EmployeeName = "Emp" + (i + 1)
                };
                orders.Add(order);
            }
            return orders;
        }

        private List<Order> OrderBy(List<Order> order, string orderby)
        {
            switch (orderby)
            {
                case "OrderId desc":
                 order=   order.OrderByDescending(p => p.OrderId).ToList();
                    break;
                case "EmployeeName desc":
                    order.OrderByDescending(p => p.EmployeeName);
                    break;
                case "EmployeeName":
                    order.OrderBy(p => p.EmployeeName);
                    break;
                default:
                    order.OrderBy(p => p.OrderId);
                    break;

            }
            return order;
        }
    }
}