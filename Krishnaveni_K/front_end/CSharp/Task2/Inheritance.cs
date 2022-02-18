using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Task2
{
    internal class Inheritance
    {
        class Branch//parent class
        {
            int BranchCode;
            string BranchName, BranchAddress;
            public void GetBranchData()
            {
                Console.WriteLine("---------Inheritance----------");
                Console.WriteLine("ENTER BRANCH DETAILS:");
                Console.WriteLine("ENTER BRANCH CODE");
                BranchCode = int.Parse(Console.ReadLine());

            }
            public void DisplayBranchData()
            {
                Console.WriteLine("BRANCH CODE IS : " + BranchCode);

            }
        }
        class Employee : Branch//derived class
        {
            int EmployeeId, EmployeeAge;
            string EmployeeName, EmployeeAddress;
            public void GetEmployeeData()
            {
                Console.WriteLine("ENTER EMPLYEE DETAILS:");
                Console.WriteLine("ENTER EMPLOYEE ID");
                EmployeeId = int.Parse(Console.ReadLine());
                Console.WriteLine("ENTER EMPLOYEE AGE");
                EmployeeAge = int.Parse(Console.ReadLine());
                Console.WriteLine("ENTER EMPLOYEE NAME");
                EmployeeName = Console.ReadLine();
                Console.WriteLine("ENTER EMPLOYEE ADDRESS");
                EmployeeAddress = Console.ReadLine();
            }
            public void DisplayEmployeeData()
            {//display emplaoyee details
                Console.WriteLine("EMPLOYEE ID IS : " + EmployeeId);
                Console.WriteLine("EMPLOYEE NAME IS : " + EmployeeName);
                Console.WriteLine("EMPLOYEE ADDRESS IS : " + EmployeeAddress);
                Console.WriteLine("EMPLOYEE AGE IS : " + EmployeeAge);
            }
        }
        class Program
        {
            static void Main(string[] args)
            {
                Employee obj1 = new Employee();
                obj1.GetBranchData();
                obj1.GetEmployeeData();
                obj1.DisplayBranchData();
                obj1.DisplayEmployeeData();
                Console.WriteLine("Press any key to exist.");
                Console.ReadKey();
            }
        }
    }
}

