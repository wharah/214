Script started on Fri 05 Apr 2019 04:33:48 PM EDT
smw42@gold33:~/CS214/labs/08/java$ cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Sarah Whitten
 * Date: April 5, 2019
 ************************************************************/

public class NameTester  
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");

      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      System.out.println("All tests passed!");
  }
}

smw42@gold33:~/CS214/labs/08/java$ cat Name.java
/* Name.java implements class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Sarah Whitten
 * Date: April 5, 2019
 ************************************************************/

// the Name class appears outside of the rest of the program
class Name {

  // Name object constructor with initialization  
  public Name(final String first, final String middle, final String last) {
      myFirst = first;
      myMiddle = middle;
      myLast = last;
  }
 
  // extractor for first name of a Name object
  public final String getFirst() {
      return myFirst;
  }

  // extractor for middle name of a Name object
  public final String getMiddle() {
      return myMiddle;
  }

  // extractor for last name of a Name object
  public final String getLast() {
      return myLast;
  }
  
  // return string created by piecing together first, middle, and last names
  public final String toString() {
      return myFirst + ' ' + myMiddle + ' ' + myLast;
  }

  private String myFirst, myMiddle, myLast;  // private instance variables
}

smw42@gold33:~/CS214/labs/08/java$ make NameTester
make: Nothing to be done for 'NameTester'.
smw42@gold33:~/CS214/labs/08/java$ java NameTester
John Paul Jones
All tests passed!
smw42@gold33:~/CS214/labs/08/java$ exit

Script done on Fri 05 Apr 2019 04:34:24 PM EDT
