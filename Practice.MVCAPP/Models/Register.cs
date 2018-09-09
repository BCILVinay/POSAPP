using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Practice.MVCAPP.Models
{
    //url: https://www.codeproject.com/Articles/1037026/Validations-in-MVC
    public class Register
    {
        [Display(Name = "User Name")]
        [Required(ErrorMessage = "Please enter user name")]
        public string UserName { get; set; }

        [Display(Name = "Email Address")]
        [Required(ErrorMessage = "Email Id is required")]
        [DataType(DataType.EmailAddress,ErrorMessage="Please enter valid email Id")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Age is required")]
        [Range(1, 100, ErrorMessage = "Please enter age between 1 and 100")]
        public int Age { get; set; }

        [Required(ErrorMessage = "Please enter password")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Display(Name = "Confirm Password")]
        [Required(ErrorMessage = "Please enter confirm password")]
        [DataType(DataType.Password)]
        [Compare("Password",ErrorMessage="Confirm password and password do not match")]
        public string ConfirmPassword { get; set; }
       
        [Salary]
        public int Salary { get; set; }

        
    }

    public class SalaryAttribute:ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value != null)
            {
                int salary = Convert.ToInt32(value);
                if (salary < 5000)
                {
                    return new ValidationResult("Salary of user must be greater than 5000");
                }
            }
            return ValidationResult.Success;
        }
    }
}