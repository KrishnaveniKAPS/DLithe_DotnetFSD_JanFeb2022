using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Task5
{
    internal class Destructor
    {
        class Welcome
        {
            // Default constructor
            public Welcome()
            {
                Console.WriteLine("Welcome message from Default Constructor...");
            }

            // Destructor
            ~Welcome()
            {
                Console.WriteLine("Destructor called");
            }
        }
        class Program
        {
            static void main(string[] args)
            {
                // Creating object for Welcome class
                // This will called default constructor
                Welcome obj = new Welcome();

                Console.Read();
            }
        }
    }

}

