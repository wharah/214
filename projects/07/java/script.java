Script started on Tue 02 Apr 2019 03:06:58 PM EDT
smw42@gold02:~/CS214/projects/07$ cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Sarah Whitten
 * Date: April 1, 2019
 ************************************************************/

import java.util.*;

public class NameTester  
{
  public static void main(String[] args)
  {
     Name aName = new Name("John", "Paul", "Jones");
//
     assert aName.getFirst().equals("John") ;
     assert aName.getMiddle().equals("Paul") ;
     assert aName.getLast().equals("Jones") ;

     aName.setFirst("James");
     aName.setMiddle("Harrell");
     aName.setLast("Whitten");
     assert aName.getFirst().equals("James");
     assert aName.getMiddle().equals("Harrell");
     assert aName.getLast().equals("Whitten");

     assert aName.lmfi().equals("Whitten, James H.");

     aName.readName();
//
     System.out.println(aName);
     // assert aName.toString().equals("John Paul Jones");

      System.out.println("All tests passed!");
  }
}

class Name
{
  	private String myFirst,
                 myMiddle,
                 myLast;

    public Name(String first, String middle, String last)
   	{
      	myFirst = first;
      	myMiddle = middle;
      	myLast = last;
   	}

   	public String getFirst()
   	{
      	return myFirst;
   	}

   	public String getMiddle()
   	{
   		return myMiddle;
   	}

   	public String getLast()
   	{
   		return myLast;
   	}

   	public String toString()
   	{
      	return myFirst + ' ' + myMiddle + ' ' + myLast;
   	}

   	public void setFirst(String first)
   	{
   		myFirst = first;
   	}

   	public void setMiddle(String middle)
   	{
   		myMiddle = middle;
   	}

   	public void setLast(String last)
   	{
   		myLast = last;
   	}

    public String lmfi()
    {
      return myLast + ", " + myFirst + " " + myMiddle.substring(0, 1) + ".";
    }

    public void readName()
    {
      Scanner keyboard = new Scanner(System.in);
      myFirst = keyboard.next();
      myMiddle = keyboard.next();
      myLast = keyboard.next();
    }
};
smw42@gold02:~/CS214/projects/07$ make java
make: Nothing to be done for 'java'.
smw42@gold02:~/CS214/projects/07$ java -ea NameTester
John
Paul
Jones
John Paul Jones
All tests passed!
smw42@gold02:~/CS214/projects/07$ java -ea NameTester
James
Harrell
Whitten
James Harrell Whitten
All tests passed!
smw42@gold02:~/CS214/projects/07$ exit

Script done on Tue 02 Apr 2019 03:07:56 PM EDT