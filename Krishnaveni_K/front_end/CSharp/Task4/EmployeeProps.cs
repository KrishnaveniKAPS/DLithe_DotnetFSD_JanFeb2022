using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Task4
{
    internal class EmployeeProps
    {
        public partial class Employee
        {
            public Employee()
            {
                GenerateEmployeeId();
            }
            public int EmpId { get; set; }
            public string Name { get; set; }

            partial void GenerateEmployeeId();

        }
    }
}
