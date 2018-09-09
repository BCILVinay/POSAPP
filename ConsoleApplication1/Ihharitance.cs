using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
   public  class Animal
    {
       public virtual string Speak()
       {
           return "Animal Speak";
       }
       public string Name()
       {
           return "Animal";
       }

    }
   public class Dog : Animal
   {
       public override string Speak()
       {
           return "Dog Bark";
       }
     
   }
   public class Cat : Animal
   {
       public override string Speak()
       {
           return "Cat Myaun";
       }
   }
}
