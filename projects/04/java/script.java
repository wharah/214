Script started on Tue 26 Feb 2019 10:36:43 PM EST
smw42@gold10:~/CS214/projects/04$ cat factorial.java
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
smw42@gold10:~/CS214/projects/04$ javac -deprecation factorial.java
smw42@gold10:~/CS214/projects/04$ java factorial
To compute n!, enter n: 1
1! = 1
smw42@gold10:~/CS214/projects/04$ java factorial
To compute n!, enter n: 3
3! = 6
smw42@gold10:~/CS214/projects/04$ java factorial
To compute n!, enter n: 6
6! = 720
smw42@gold10:~/CS214/projects/04$ exit

Script done on Tue 26 Feb 2019 10:37:13 PM EST
