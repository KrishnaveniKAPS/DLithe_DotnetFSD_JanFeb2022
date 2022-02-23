// C# program to calculate the area
// of a Square using abstract class
// and abstract method
using System;

// declare class 'AreaClass'
// as abstract
abstract class AreaClass
{
	// declare method
	// 'Area' as abstract
	abstract public int Area();
}

// class 'AreaClass' inherit
// in child class 'Square'
class Square : AreaClass
{
	int side = 0;

	// constructor
	public Square(int n)
	{
		side = n;
	}

	// the abstract method
	// 'Area' is overridden here
	public override int Area()
	{
		return side * side;
	}
}

class gfg
{

	// Main Method
	public static void Main()
	{
		Square s = new Square(6);
		Console.WriteLine("Area = " + s.Area());
	}
}
