using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Practice.ASP_MultiLanguageApp.Models
{
    public class Demo
    {
        [Display (Name ="Greetings",ResourceType= typeof(Resources.Resource))]
        public string Greetings { get; set; }
        [Display(Name = "Introduction", ResourceType = typeof(Resources.Resource))]
        public string Introduction { get; set; }
    }
}