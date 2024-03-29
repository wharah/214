Script started on Tue 05 Mar 2019 10:54:13 PM EST
smw42@gold33:~/CS214/projects/05$ cat Quadratic.java
/* Quadratic.java is a driver for function quadratic().
 * Author: Sarah Whitten
 * Date: March 4, 2019
 ****************************************************************/

import java.util.*;

public class Quadratic {

	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
    	System.out.print("Enter a, b, and c from your quadratic equation:\n");

    	int a = s.nextInt();
    	int b = s.nextInt();
    	int c = s.nextInt();
    	double[] roots = {0.0, 0.0};

    	if (quadratic(a, b, c, roots)) {
    		System.out.print("The real roots are: ");
    		System.out.print(roots[0]);
    		System.out.print(" and ");
    		System.out.print(roots[1]);
    		System.out.println();
    	}
	}

	public static boolean quadratic(int a, int b, int c, double[] roots) {

		double root1, root2;

		if (a != 0) {
        	double det = Math.pow(b, 2.0) - 4 * a * c;
         	if (det >= 0) {
            	roots[0] = (-b + Math.sqrt(det))/(2*a);
            	roots[1] = (-b - Math.sqrt(det))/(2*a);
            	return true;
         	} else {
            	System.err.println("\n*** quadraticRoots(): b^2 - 4ac is negative!");
            	roots[0] = roots[1] = 0.0;
            	return false;
         	}
      	} else {
         	System.err.println("\n*** QuadraticRoots(): a is zero!");
         	roots[0] = roots[1] = 0.0;
         	return false;
      }
	}
}
smw42@gold33:~/CS214/projects/05$ javac -deprecation Quadratic.java
smw42@gold33:~/CS214/projects/05$ java Quadratic
Enter a, b, and c from your quadratic equation:
1
1
-6
The real roots are: 2.0 and -3.0
smw42@gold33:~/CS214/projects/05$ java Quadratic
Enter a, b, and c from your quadratic equation:
1
1
6

*** quadraticRoots(): b^2 - 4ac is negative!
smw42@gold33:~/CS214/projects/05$ java Quadratic
Enter a, b, and c from your quadratic equation:
0
1
6

*** QuadraticRoots(): a is zero!
smw42@gold33:~/CS214/projects/05$ exit

Script done on Tue 05 Mar 2019 10:54:58 PM EST
