// Temperature.java is a class that deals with temperatures, with methods
// to change, convert, input and output, and compare temperatures
//
// Created by: Sarah Whitten
// Date: April 20, 2019

import java.util.Scanner;
import java.util.regex.*;

public class Temperature 
{
	private double degrees;
	private char scale;

	public Temperature(double d, char s)
	{
		degrees = d;
		scale = s;
	}

	public double getDegrees()
	{
		return degrees;
	}

	public char getScale()
	{
		return scale;
	}

	public static Temperature getFahrenheit(Temperature temp)
	{
		if(temp.getScale()=='F')
		{
			return new Temperature(temp.getDegrees(), 'F');
		}
		else if(temp.getScale()=='C')
		{
			return new Temperature(temp.getDegrees() * 1.8 + 32.0, 'F');
		}
		else
		{
			return new Temperature(temp.getDegrees() * 1.8 - 459.67, 'F'); 
		}
	}

	public static Temperature getCelsius(Temperature temp)
	{
		if(temp.getScale()=='C')
		{
			return new Temperature(temp.getDegrees(), 'C');
		}
		else if(temp.getScale()=='F')
		{
			return new Temperature((temp.getDegrees() - 32.0 ) * (5.0 / 9.0), 'C');
		}
		else
		{
			return new Temperature(temp.getDegrees() - 273.15, 'C'); 
		}
	}

	// Returns a new Temperature with the equivalent degrees of 
	// a passed in Temperature measure in Kelvin
	public static Temperature getKelvin(Temperature temp)
	{
		if(temp.getScale()=='K')
		{
			return new Temperature(temp.getDegrees(), 'K');
		}
		else if(temp.getScale()=='C')
		{
			return new Temperature(temp.getDegrees() + 273.15, 'K');
		}
		else
		{
			return new Temperature((temp.getDegrees() + 459.67) * (5.0 / 9.0), 'K'); 
		}
	}

	// Allows the user to input a string of the form: "100.0 F", where
	// the first part is a valid double, and the second part is either
	// a 'C', a 'F', or a 'K', and then sets the temperature to those values
	public void readTemp()
	{
		// temporarily declare and initialize our two input variables
		double input1 = 0;
		char input2 = 'K';

		Scanner keyboard = new Scanner(System.in);

		// prompt the user for input
		System.out.print("Please enter the temperature: ");

		// get a line from the user
		String input = keyboard.nextLine();

		// create a regex to test the input
		Pattern p = Pattern.compile("\\d+ [FCK]");
		Matcher m = p.matcher(input);

		// if the input is acceptable
		if(m.matches())
		{
			// deliminate input with spaces
			Scanner delim = new Scanner(input).useDelimiter("\\s");

			// set degrees to be the first part of the string
			degrees = Double.parseDouble(delim.next());

			// set scale to be the second part of the string
			scale = delim.next().charAt(0);
		} else {
			System.out.println("readTemp() failed: input not valid!");
		}
	}

	// Returns the temperature in a string format, allowing it to be easily
	// printed with the "System.out.print" method
	public String toString()
	{
		return ("F: " + Temperature.getFahrenheit(this).getDegrees() + "  C: " + Temperature.getCelsius(this).getDegrees() + "  K: " + Temperature.getKelvin(this).getDegrees());
	}

	// Raises the temperature of the object by amount degrees of the current scale
	public static Temperature raise(Temperature temp, double amount)
	{
		return new Temperature(temp.getDegrees() + amount, temp.getScale());
	}

	// Lowers the temperature of the object by amount degrees of the current scale
	public Temperature lower(Temperature temp, double amount)
	{
		return new Temperature(temp.getDegrees() - amount, temp.getScale());
	}

	// Returns true if the passed in Temperatures have the same degree value, 
	// regardless of the scale used
	public static boolean equals(Temperature first, Temperature second)
	{
		return (Math.abs(Temperature.getKelvin(first).getDegrees() - Temperature.getKelvin(second).getDegrees()) <= 0.0001);
	}

	// Returns true if the left operand is a lower temperature than the right operand,
	// regardless of the scale used
	public static boolean lessthan(Temperature first, Temperature second)
	{
		return (Temperature.getKelvin(first).getDegrees() - Temperature.getKelvin(second).getDegrees()) < 0;
	}
}

