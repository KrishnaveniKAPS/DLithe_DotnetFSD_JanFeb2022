using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace Task6
{
    internal class File
    {

        class Test
        {
            public static void Main()
            {
                string path = @"c:\temp\MyTest.txt";
                if (!System.IO.File.Exists(path))
                {
                    // Create a file to write to.
                    using (StreamWriter sw = System.IO.File.CreateText(path))
                    {
                        sw.WriteLine("Hello");
                        sw.WriteLine("And");
                        sw.WriteLine("Welcome TO Dlithe");
                    }
                }

                // Open the file to read from.
                using (StreamReader sr = System.IO.File.OpenText(path))
                {
                    string s;
                    while ((s = sr.ReadLine()) != null)
                    {
                        Console.WriteLine(s);
                    }
                }
            }
        }
    }
}

