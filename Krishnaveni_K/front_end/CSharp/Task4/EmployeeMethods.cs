using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Task4
{
    internal class EmployeeMethods
    {
        public partial class Employee
        {
            partial void GenerateEmployeeId()
            {
                this.EmpId = random();
            }
        }
        class Program
        {
            static void Main(string[] args)
            {
                var emp = new Employee();
                Console.WriteLine(emp.EmpId); // prints genereted id

                Console.ReadLine();
            }
        }
    }
}
