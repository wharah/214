Script started on Sat 20 Apr 2019 04:23:27 PM EDT
smw42@gold33:~/CS214/labs/10/java$ cat Birds.java Bird.java Duck.java Goose.java Owl.jav 
a
/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: Sarah Whitten
 * Date: April 20, 2019
 *********************************************************/

public class Birds {
  
  	public static void main(String[] args) {
      	System.out.println("\nWelcome to the Bird Park!\n");

      	Bird bird0 = new Bird();

    	Bird bird1 = new Bird("Hawkeye");
	    bird1.print();

	    Duck bird2 = new Duck("Donald");
	    bird2.print();

	    Goose bird3 = new Goose("Mother");
	    bird3.print();

	    Owl bird4 = new Owl("Woodsey");
	    bird4.print();
	    System.out.println();
    }
}

/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sarah Whitten
 * Date: April 20, 2019
 ******************************************************/

import java.io.*;

public class Bird
{
    /* default constructor
     * PostCond: myName == "".
     */
    public Bird()
    {
        myName = "";
    }

    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
    public Bird(String name)
    {
        myName = name;
    }

    /* Name accessor
     * Return: myName.
     */
    public String getName()
    {
        return myName;
    }

    /* A Bird's Call
     * Return: a default bird-call ("Squawk!").
     */
    public String call()
    {
        return "Squawk!";
    }

    /* Output a Bird 
     * Output: Everything known about myself
     *          to the standard output stream.
     */
    public void print()
    {
        System.out.println( getName() + ' ' + getClass().getName()
                            + " says " + call() );
    }

  private String myName;
}

/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sarah Whitten
 * Date: April 20, 2019
 ******************************************************/

public class Duck extends Bird 
{
	/* default constructor */
	public Duck() {
		super();
	}
    
	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */
	public Duck(String name)
	{
		super(name);
	}

	/* A Duck's Call
	 * Return: a duck-call ("Quack!").
	 */
	public String call()
	{
		return "Quack!";
	}
}

/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sarah Whitten
 * Date: April 20, 2019
 ******************************************************/

public class Goose extends Bird 
{
	/* default constructor */
	public Goose() 
	{
		super();
	}

	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */
	public Goose(String name)
	{
		super(name);
	}

	/* A Goose's Call
	 * Return: a goose-call ("Honk!").
	 */
	public String call() 
	{
		return "Honk!";
	}
} 

/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sarah Whitten
 * Date: April 20, 2019
 ******************************************************/

public class Owl extends Bird
{
	/* default constructor */
	public Owl()
	{
		super();
	}

	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */
	public Owl(String name)
	{
		super(name);
	}

	/* An Owl's Call
	 * Return: an owl-call ("Whoo-hoo!").
	 */
	public String call()
	{
		return "Hoo!";
	}
} 

smw42@gold33:~/CS214/labs/10/java$ make Birds
javac -deprecation Birds.java
smw42@gold33:~/CS214/labs/10/java$ java Birds

Welcome to the Bird Park!

Hawkeye Bird says Squawk!
Donald Duck says Quack!
Mother Goose says Honk!
Woodsey Owl says Hoo!

smw42@gold33:~/CS214/labs/10/java$ exit

Script done on Sat 20 Apr 2019 04:24:01 PM EDT
