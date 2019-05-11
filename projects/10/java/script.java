Script started on Sat 20 Apr 2019 07:06:37 PM EDT
smw42@gold33:~/CS214/projects/10/java$ cat Bird.java Birds.java FlyingBird.java WalkingBird.java Duck.java Goose.java Owl.java Penguin.java Ostrich. 
java Kiwi.java
/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sarah Whitten
 * Date: April 20, 2019
 ******************************************************/

import java.io.*;

public abstract class Bird
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

    public abstract String movement();

    /* Output a Bird 
     * Output: Everything known about myself
     *          to the standard output stream.
     */
    public void print()
    {
        System.out.println( getName() + ' ' + getClass().getName()
                            + " just " + movement() + " and said " + call() );
    }

  	private String myName;
}

/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sarah Whitten
 * Date: April 20, 2019
 *********************************************************/

public class Birds {
  
  	public static void main(String[] args) {
      	System.out.println("\nWelcome to the Bird Park!\n");

      	// Bird bird0 = new Bird();

    	FlyingBird bird1 = new FlyingBird("Hawkeye");
	    bird1.print();

	    Duck bird2 = new Duck("Donald");
	    bird2.print();

	    Goose bird3 = new Goose("Mother");
	    bird3.print();

	    Owl bird4 = new Owl("Woodsey");
	    bird4.print();

	    Penguin bird5 = new Penguin("Pingu");
	    bird5.print();

	    Ostrich bird6 = new Ostrich("Orla");
	    bird6.print();

	    Kiwi bird7 = new Kiwi("Kellie");
	    bird7.print();

	    System.out.println();
    }
}

/* FlyingBird.java provides a FlyingBird class.
 *
 * Completed by: Sarah Whitten
 * Date: April 20, 2019
 ******************************************************/

public class FlyingBird extends Bird 
{
	public FlyingBird()
	{
		super();
	}

	public FlyingBird(String name)
	{
		super(name);
	}

	public String movement()
	{
		return "flew by";
	}
}

/* WalkingBird.java provides a WalkingBird class.
 *
 * Completed by: Sarah Whitten
 * Date: April 20, 2019
 ******************************************************/

public class WalkingBird extends Bird 
{
	public WalkingBird()
	{
		super();
	}

	public WalkingBird(String name)
	{
		super(name);
	}

	public String movement()
	{
		return "walked by";
	}
}

/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sarah Whitten
 * Date: April 20, 2019
 ******************************************************/

public class Duck extends FlyingBird 
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

public class Goose extends FlyingBird 
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

public class Owl extends FlyingBird
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

/* Penguin.java provides a Penguin subclass of Bird.
 *
 * By: Sarah Whitten
 * Date: April 20, 2019
 ******************************************************/

public class Penguin extends WalkingBird 
{
	/* default constructor */
	public Penguin() {
		super();
	}
    
	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */
	public Penguin(String name)
	{
		super(name);
	}

	/* A Penguin's Call
	 * Return: a penguin-call ("Huh-huhh!").
	 */
	public String call()
	{
		return "Huh-huhh!";
	}
}

/* Ostrich.java provides a Ostrich subclass of Bird.
 *
 * By: Sarah Whitten
 * Date: April 20, 2019
 ******************************************************/

public class Ostrich extends WalkingBird 
{
	/* default constructor */
	public Ostrich() {
		super();
	}
    
	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */
	public Ostrich(String name)
	{
		super(name);
	}

	/* A Ostrich's Call
	 * Return: a ostrich-call ("Snork!").
	 */
	public String call()
	{
		return "Snork!";
	}
}

/* Kiwi.java provides a Kiwi subclass of Bird.
 *
 * By: Sarah Whitten
 * Date: April 20, 2019
 ******************************************************/

public class Kiwi extends WalkingBird 
{
	/* default constructor */
	public Kiwi() {
		super();
	}
    
	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */
	public Kiwi(String name)
	{
		super(name);
	}

	/* A Kiwi's Call
	 * Return: a kiwi-call ("Reeee!").
	 */
	public String call()
	{
		return "Reeee!";
	}
}

smw42@gold33:~/CS214/projects/10/java$ make Birds
javac -deprecation Birds.java
smw42@gold33:~/CS214/projects/10/java$ java Birds

Welcome to the Bird Park!

Hawkeye FlyingBird just flew by and said Squawk!
Donald Duck just flew by and said Quack!
Mother Goose just flew by and said Honk!
Woodsey Owl just flew by and said Hoo!
Pingu Penguin just walked by and said Huh-huhh!
Orla Ostrich just walked by and said Snork!
Kellie Kiwi just walked by and said Reeee!

smw42@gold33:~/CS214/projects/10/java$ exit

Script done on Sat 20 Apr 2019 07:07:36 PM EDT
