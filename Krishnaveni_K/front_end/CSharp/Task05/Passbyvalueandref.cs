using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Task05
{
    internal class Passbyvalueandref
    {
        class Program
        {
            static void main(string[] args)
            {
                int arg;

                // Passing by value.
                // The value of arg in Main is not changed.
                arg = 4;
                squareVal(arg);
                Console.WriteLine(arg);
                // Output: 4

                // Passing by reference.
                // The value of arg in Main is changed.
                arg = 4;
                squareRef(ref arg);
                Console.WriteLine(arg);
                // Output: 16
            }

            static void squareVal(int valParameter)
            {
                valParameter *= valParameter;
            }

            // Passing by reference
            static void squareRef(ref int refParameter)
            {
                refParameter *= refParameter;
            }
        }
    }
}
