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
    * letterGrade() converts an number year into its letter equivalent.
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