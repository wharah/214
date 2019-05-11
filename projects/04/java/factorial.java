/* factorial.java is a driver for function factorial().
 * Author: Sarah Whitten
 * Date: February 25, 2019
 ****************************************************************/

import java.util.*;

public class factorial
{
    public static void main(String[] args)
    {
    	Scanner s = new Scanner(System.in);
    	System.out.print("To compute n!, enter n: ");

    	int base = s.nextInt();
    	int result = factorial(base);

    	System.out.println(base + "! = " + result);
    }

    private static int factorial(int base)
    {
    	int counter = 1;
    	for (int i = 2; i <= base; i++)
    	{
    		counter *= i;
    	}
    	return counter;
    }
}
