// C# Program to illustrate calling
// a Default constructor
using System;
namespace DefaultConstructorExample
{

	class Program
	{

		int num;
		string name;

		// this would be invoked while the
		// object of that class created.
		Program()
		{
			Console.WriteLine("Constructor Called");
		}

		// Main Method
		public static void Main()
		{

			// this would invoke default
			// constructor.
			Program geek1 = new Program();

			// Default constructor provides
			// the default values to the
			// int and object as 0, null
			// Note:
			// It Give Warning because
			// Fields are not assign
			Console.WriteLine(geek1.name);
			Console.WriteLine(geek1.num);
		}
	}
}
