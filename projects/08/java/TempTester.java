// TempTester.java tests the methods from the
// Temperature.java class
// 
// Created by: Sarah Whitten
// Date: April 20, 2019

import java.util.Scanner;

public class TempTester
{
	public static void main(String[] args)
	{
		Scanner keyboard = new Scanner(System.in);
		System.out.println("Creating the lower temperature");
		Temperature baseTemp = new Temperature(0, 'C');
		baseTemp.readTemp();
		System.out.println("Creating the upper temperature");
		Temperature limitTemp = new Temperature(0, 'C');
		limitTemp.readTemp();
		System.out.print("Please enter the step value: ");
		double stepValue = keyboard.nextDouble();

		while(Temperature.lessthan(baseTemp, limitTemp) || Temperature.equals(baseTemp, limitTemp))
		{
			System.out.println(baseTemp);
			baseTemp = Temperature.raise(baseTemp, stepValue);
		}
	}
}

