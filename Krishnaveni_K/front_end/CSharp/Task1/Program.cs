// C# program to display the details of the employee's
using System;

class Employee
{
    // write a program to display Emplayee details
    static void EmpInf()
    {
        string Fname, Lname, Gender;
        int EmpNo, age;
        Fname = "john";
        Lname = "shon";
        Gender = "M";
        age = 22;
        EmpNo = 100;
        Console.WriteLine(" ----Displaying Emplaoyee Details----");
        Console.WriteLine("Employee No {0}", EmpNo);
        Console.WriteLine("Employee Name {0} {1}", Fname, Lname);
        Console.WriteLine("Employee Age {0}", age);
        Console.WriteLine("Employee Gender {0}", Gender);

        //Arithmetic Operators
        int x = 5;
        int y = 3;
        //addition
        Console.WriteLine(" ----Arithmetic Operators----");
        Console.WriteLine(x + y);
        //subtraction
        Console.WriteLine(x - y);
        //multiplication
        Console.WriteLine(x * y);
        //division
        Console.WriteLine(x / y);
        //modulus
        Console.WriteLine(x % y);
        //increment
        x++;
        Console.WriteLine(x);
        //decrement
        x--;
        Console.WriteLine(x);

        //3. Swap without using third variable
        int a = 10, b = 25;
        Console.WriteLine(" ---- Swap without using third variable----");
        Console.WriteLine("Value of a is: " + a);
        Console.WriteLine("Value of b is: " + b);
        a = a + b;
        b = a - b;
        a = a - b;
        Console.WriteLine("------After Swaping------");
        Console.WriteLine(" New Value of a is: " + a);
        Console.WriteLine(" New Value of b is: " + b);
        Console.ReadLine();

        //  4, c# program to Find largest number among 3 numbers
        int i, j, k;
        Console.WriteLine("------c# program to Find largest number among 3 numbers------");
        Console.WriteLine(" Enter First Number i");
        i = int.Parse(Console.ReadLine());

        Console.WriteLine(" Enter Second Number j");
        j = int.Parse(Console.ReadLine());

        Console.WriteLine(" Enter Third Number k");
        k = int.Parse(Console.ReadLine());

        if (i > j && i > k)
        {
            Console.WriteLine(" i is Greater");
        }

        else if (j > i && j > k)
        {
            Console.WriteLine(" j is Greater");
        }

        else if (k > i && k > j)
        {
            Console.WriteLine(" k is Greater");
        }
        else
        {
            Console.WriteLine(" All are Equal");
        }
        Console.ReadLine();


    }
    static void Main(string[] args)
    {
        EmpInf();
        Console.ReadLine();



    }
}
