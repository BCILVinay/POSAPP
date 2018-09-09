using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Practice.MVCAPP.Models;

namespace Practice.MVCAPP.BIZ
{
    public class RegisterBIZ
    {
        private static List<int> Age = new List<int>();

        public List<int> GetAge()
        {
            if (Age.Count == 0)
            {
                for (int i = 1; i <=100; i++)
                {
                    Age.Add(i);
                }
            }
            return Age;
        }
    }
}