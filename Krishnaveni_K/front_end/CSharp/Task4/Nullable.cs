using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Task4
{
    internal class Nullable
    {

        // C# program to illustrate Nullable Types
            class Program
    {
// Main Method
        static void Main(string[] args)
        {
                //In Nullable types, you can also assign values to nullable type
                // a is nullable type
                // and contains null value
                int? a = null;

                // b is nullable type int
                // and behave as a normal int
                int? b = 2345;
                Console.WriteLine("-------Nullable Types------");
                // this will not print
                // anything on console
                Console.WriteLine(a);

                // gives 2345 as output
                Console.WriteLine(b);

                // defining Nullable type
                Nullable<int> n = null;

                // using the method
                // output will be 0 as default
                // value of null is 0
        
            Console.WriteLine(n.GetValueOrDefault());

            // defining Nullable type
            int? n1 = null;

            // using the method
            // output will be 0 as default
            // value of null is 0
            Console.WriteLine(n1.GetValueOrDefault());


            // using Nullable type syntax
            // to define non-nullable
            int? n2 = 47;

            // using the method
            Console.WriteLine(n2.GetValueOrDefault());

            // using Nullable type syntax
            // to define non-nullable
            Nullable<int> n3 = 457;

            // using the method
            Console.WriteLine(n3.GetValueOrDefault());
       //can use Nullable.HasValue and Nullable.Value to check the value.
                // a is nullable type
                // and contains null value
                Nullable<int> i = null;

                // check the value of object
                Console.WriteLine("------Nullable Hash Value-----");
                Console.WriteLine(a.HasValue);

                // b is nullable type
                // and contains a value
                Nullable<int> j = 7;

                // check the value of object
                Console.WriteLine(j.HasValue);


            }

        }


}
    }



