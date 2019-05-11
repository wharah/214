Script started on Sat 23 Feb 2019 05:16:40 PM EST
smw42@gold32:~/CS214/labs/04$ cat LogTable.java
/* LogTable.java displays a table of logarithms.
 *
 * Input: start, stop and increment, three doubles.
 * PRE: start < stop && increment > 0.
 * Output: A table of logarithms from start to stop,
 *         with increment as the step value.
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by: Sarah Whitten
 ********************************************************/
import java.util.Scanner; 		// Get input

class LogTable{

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.println("To display a table of logarithms,");
    System.out.println("enter the start, stop and increment values: ");
    double start, stop, increment;
    start = keyboard.nextDouble();
    stop = keyboard.nextDouble();
    increment = keyboard.nextDouble();
    double count;
    count = start;

    while (count <= stop) {
        System.out.println("The logarithm of " + count + " is " + Math.log10(count));
        count += increment;
    }
  }
}

smw42@gold32:~/CS214/labs/04$ javac -deprecation LogTable.java
smw42@gold32:~/CS214/labs/04$ java LogTable
To display a table of logarithms,
enter the start, stop and increment values: 
1
10
1
The logarithm of 1.0 is 0.0
The logarithm of 2.0 is 0.3010299956639812
The logarithm of 3.0 is 0.47712125471966244
The logarithm of 4.0 is 0.6020599913279624
The logarithm of 5.0 is 0.6989700043360189
The logarithm of 6.0 is 0.7781512503836436
The logarithm of 7.0 is 0.8450980400142568
The logarithm of 8.0 is 0.9030899869919435
The logarithm of 9.0 is 0.9542425094393249
The logarithm of 10.0 is 1.0
smw42@gold32:~/CS214/labs/04$ exit

Script done on Sat 23 Feb 2019 05:17:14 PM EST
