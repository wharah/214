Script started on Thu May  2 16:06:39 2019
bash-3.2$ cat Temperature.java
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

bash-3.2$ cat TempTester.java
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

bash-3.2$ java TempTester
Creating the lower temperature
Please enter the temperature: 0 F
Creating the upper temperature
Please enter the temperature: 100 C
Please enter the step value: 2.5
F: 0.0  C: -17.77777777777778  K: 255.37222222222223
F: 2.5  C: -16.38888888888889  K: 256.7611111111111
F: 5.0  C: -15.0  K: 258.15000000000003
F: 7.5  C: -13.611111111111112  K: 259.5388888888889
F: 10.0  C: -12.222222222222223  K: 260.9277777777778
F: 12.5  C: -10.833333333333334  K: 262.31666666666666
F: 15.0  C: -9.444444444444445  K: 263.7055555555556
F: 17.5  C: -8.055555555555555  K: 265.0944444444445
F: 20.0  C: -6.666666666666667  K: 266.48333333333335
F: 22.5  C: -5.277777777777778  K: 267.87222222222226
F: 25.0  C: -3.8888888888888893  K: 269.2611111111111
F: 27.5  C: -2.5  K: 270.65000000000003
F: 30.0  C: -1.1111111111111112  K: 272.0388888888889
F: 32.5  C: 0.2777777777777778  K: 273.4277777777778
F: 35.0  C: 1.6666666666666667  K: 274.81666666666666
F: 37.5  C: 3.055555555555556  K: 276.2055555555556
F: 40.0  C: 4.444444444444445  K: 277.5944444444445
F: 42.5  C: 5.833333333333334  K: 278.98333333333335
F: 45.0  C: 7.222222222222222  K: 280.37222222222226
F: 47.5  C: 8.61111111111111  K: 281.7611111111111
F: 50.0  C: 10.0  K: 283.15000000000003
F: 52.5  C: 11.38888888888889  K: 284.53888888888895
F: 55.0  C: 12.777777777777779  K: 285.9277777777778
F: 57.5  C: 14.166666666666668  K: 287.3166666666667
F: 60.0  C: 15.555555555555557  K: 288.70555555555563
F: 62.5  C: 16.944444444444446  K: 290.0944444444445
F: 65.0  C: 18.333333333333336  K: 291.4833333333334
F: 67.5  C: 19.72222222222222  K: 292.87222222222226
F: 70.0  C: 21.11111111111111  K: 294.2611111111112
F: 72.5  C: 22.5  K: 295.65000000000003
F: 75.0  C: 23.88888888888889  K: 297.03888888888895
F: 77.5  C: 25.27777777777778  K: 298.4277777777778
F: 80.0  C: 26.666666666666668  K: 299.8166666666667
F: 82.5  C: 28.055555555555557  K: 301.20555555555563
F: 85.0  C: 29.444444444444446  K: 302.5944444444445
F: 87.5  C: 30.833333333333336  K: 303.9833333333334
F: 90.0  C: 32.22222222222222  K: 305.37222222222226
F: 92.5  C: 33.611111111111114  K: 306.7611111111112
F: 95.0  C: 35.0  K: 308.15000000000003
F: 97.5  C: 36.38888888888889  K: 309.53888888888895
F: 100.0  C: 37.77777777777778  K: 310.9277777777778
F: 102.5  C: 39.16666666666667  K: 312.3166666666667
F: 105.0  C: 40.55555555555556  K: 313.70555555555563
F: 107.5  C: 41.94444444444444  K: 315.0944444444445
F: 110.0  C: 43.333333333333336  K: 316.4833333333334
F: 112.5  C: 44.72222222222222  K: 317.87222222222226
F: 115.0  C: 46.111111111111114  K: 319.2611111111112
F: 117.5  C: 47.5  K: 320.65000000000003
F: 120.0  C: 48.88888888888889  K: 322.03888888888895
F: 122.5  C: 50.27777777777778  K: 323.4277777777778
F: 125.0  C: 51.66666666666667  K: 324.8166666666667
F: 127.5  C: 53.05555555555556  K: 326.20555555555563
F: 130.0  C: 54.44444444444445  K: 327.5944444444445
F: 132.5  C: 55.833333333333336  K: 328.9833333333334
F: 135.0  C: 57.22222222222222  K: 330.37222222222226
F: 137.5  C: 58.611111111111114  K: 331.7611111111112
F: 140.0  C: 60.0  K: 333.15000000000003
F: 142.5  C: 61.38888888888889  K: 334.53888888888895
F: 145.0  C: 62.77777777777778  K: 335.9277777777778
F: 147.5  C: 64.16666666666667  K: 337.3166666666667
F: 150.0  C: 65.55555555555556  K: 338.70555555555563
F: 152.5  C: 66.94444444444444  K: 340.0944444444445
F: 155.0  C: 68.33333333333334  K: 341.4833333333334
F: 157.5  C: 69.72222222222223  K: 342.87222222222226
F: 160.0  C: 71.11111111111111  K: 344.2611111111112
F: 162.5  C: 72.5  K: 345.65000000000003
F: 165.0  C: 73.88888888888889  K: 347.03888888888895
F: 167.5  C: 75.27777777777779  K: 348.4277777777778
F: 170.0  C: 76.66666666666667  K: 349.8166666666667
F: 172.5  C: 78.05555555555556  K: 351.20555555555563
F: 175.0  C: 79.44444444444444  K: 352.5944444444445
F: 177.5  C: 80.83333333333334  K: 353.9833333333334
F: 180.0  C: 82.22222222222223  K: 355.37222222222226
F: 182.5  C: 83.61111111111111  K: 356.7611111111112
F: 185.0  C: 85.0  K: 358.15000000000003
F: 187.5  C: 86.38888888888889  K: 359.53888888888895
F: 190.0  C: 87.77777777777779  K: 360.92777777777786
F: 192.5  C: 89.16666666666667  K: 362.3166666666667
F: 195.0  C: 90.55555555555556  K: 363.70555555555563
F: 197.5  C: 91.94444444444444  K: 365.0944444444445
F: 200.0  C: 93.33333333333334  K: 366.4833333333334
F: 202.5  C: 94.72222222222223  K: 367.87222222222226
F: 205.0  C: 96.11111111111111  K: 369.2611111111112
F: 207.5  C: 97.5  K: 370.65000000000003
F: 210.0  C: 98.8888888888889  K: 372.03888888888895
bash-3.2$ java TempTester
Creating the lower temperature
Please enter the temperature: 0 K
Creating the upper temperature
Please enter the temperature: 212 F
Please enter the step value: 20.0
F: -459.67  C: -273.15  K: 0.0
F: -423.67  C: -253.14999999999998  K: 20.0
F: -387.67  C: -233.14999999999998  K: 40.0
F: -351.67  C: -213.14999999999998  K: 60.0
F: -315.67  C: -193.14999999999998  K: 80.0
F: -279.67  C: -173.14999999999998  K: 100.0
F: -243.67000000000002  C: -153.14999999999998  K: 120.0
F: -207.67000000000002  C: -133.14999999999998  K: 140.0
F: -171.67000000000002  C: -113.14999999999998  K: 160.0
F: -135.67000000000002  C: -93.14999999999998  K: 180.0
F: -99.67000000000002  C: -73.14999999999998  K: 200.0
F: -63.670000000000016  C: -53.14999999999998  K: 220.0
F: -27.670000000000016  C: -33.14999999999998  K: 240.0
F: 8.329999999999984  C: -13.149999999999977  K: 260.0
F: 44.329999999999984  C: 6.850000000000023  K: 280.0
F: 80.32999999999998  C: 26.850000000000023  K: 300.0
F: 116.32999999999998  C: 46.85000000000002  K: 320.0
F: 152.32999999999998  C: 66.85000000000002  K: 340.0
F: 188.32999999999998  C: 86.85000000000002  K: 360.0
bash-3.2$ exit

Script done on Thu May  2 16:09:28 2019
