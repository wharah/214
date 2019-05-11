Script started on Fri 29 Mar 2019 03:28:23 PM EDT
smw42@gold06:~/CS214/labs/07$ cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Sarah Whitten
 * Date: March 29, 2019
 ************************************************************/

public class NameTester  
{
  public static void main(String[] args)
  {
     Name aName = new Name("John", "Paul", "Jones");
//
     assert aName.getFirst().equals("John") ;
     assert aName.getMiddle().equals("Paul") ;
     assert aName.getLast().equals("Jones") ;
//
     System.out.println(aName);
     assert aName.toString().equals("John Paul Jones");

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
};
smw42@gold06:~/CS214/labs/07$ make java
make: Nothing to be done for 'java'.
smw42@gold06:~/CS214/labs/07$ java -ea NameTester
John Paul Jones
All tests passed!
smw42@gold06:~/CS214/labs/07$ exit

Script done on Fri 29 Mar 2019 03:29:14 PM EDT
