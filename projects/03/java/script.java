Script started on Wed 20 Feb 2019 09:32:33 PM EST
smw42@gold34:~/CS214/projects/03$ cat LetterGrade.java
/* LetterGrade.java is a driver for function letterGrade().
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 ****************************************************************/

import java.util.Scanner;

public class LetterGrade {

    public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your number grade: "); // prompt

      String grade_str = keyboard.next();       // read grade
      System.out.println(letterGrade(grade_str)); // display its letter
    }


   /***************************************************************
    * letterGrade() converts a number grade into its letter equivalent.
    *
    * Receive: grade_str, a string.
    * Return: the letter grade corresponding to number grade.
    */

    public static String letterGrade(String grade_str) 
    {
        int grade = Integer.parseInt(grade_str);
        switch (grade / 10) {
            case 10: case 9: return "A";
            case 8: return "B";
            case 7: return "C";
            case 6: return "D";
            default: return "F";
        }
    }
}
smw42@gold34:~/CS214/projects/03$ javac -deprecation LetterGrade.java
smw42@gold34:~/CS214/projects/03$ java LetterGrade

Enter your number grade: 
100
A
smw42@gold34:~/CS214/projects/03$ java LetterGrade

Enter your number grade: 
95
A
smw42@gold34:~/CS214/projects/03$ java LetterGrade

Enter your number grade: 
85
B
smw42@gold34:~/CS214/projects/03$ java LetterGrade

Enter your number grade: 
75
C
smw42@gold34:~/CS214/projects/03$ java LetterGrade

Enter your number grade: 
65
D
smw42@gold34:~/CS214/projects/03$ java LetterGrade

Enter your number grade: 
55
F
smw42@gold34:~/CS214/projects/03$ java LetterGrade

Enter your number grade: 
12
F
smw42@gold34:~/CS214/projects/03$ exit

Script done on Wed 20 Feb 2019 09:33:59 PM EST
