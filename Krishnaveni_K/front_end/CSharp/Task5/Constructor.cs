using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Task5
{
    internal class Constructor
    {
        class Welcome
        {
            // Default constructor
            public Welcome()
            {
                Console.WriteLine("Welcome message from Default Constructor...");
            }

            // Parametarized constructor
            public Welcome(string name)
            {
                Console.WriteLine("\n\nThis message from parametarized constructor");
                Console.WriteLine("Welcome to Constructor sample, by {0}", name);
            }
        }
        class Program
        {
            static void main(string[] args)
            {
                // Creating object for Welcome class
                // This will called default constructor
                Welcome obj = new Welcome();

                // Creating object for welcome class by passing parameter
                // This will called parametarized constructor which matches
                Welcome pObj = new Welcome("Ramakrishna Basgalla");

                Console.Read();
            }
        }
    }
}

