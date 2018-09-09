using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


using Practice.MVC.Models;

namespace Practice.MVC.Controllers
{
    public class PaggedListController : Controller
    {
        //
        // GET: /PaggedList/

        /// <summary>
        /// This is example for pagging using MVC PagedList.
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult Index(int? page)
        {
            var obj = GetOrderList();

            return View(obj);
        }

        private List<Order> GetOrderList()
        {
            List<Order> orders = new List<Order>();
            for (int i = 0; i < 50; i++)
            {
                Order order = new Order()
                {
                    OrderId = (i + 1),
                    OrderDate = DateTime.UtcNow.AddDays((i+1)),
                    CompanyName = "Company" + (i + 1),
                    CustomerId = (1000 + (i + 1)),
                    EmployeeName = "Emp" + (i + 1)
                };
                orders.Add(order);
            }
            return orders;
        }
    }
}