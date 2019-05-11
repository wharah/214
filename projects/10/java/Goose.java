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

