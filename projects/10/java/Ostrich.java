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

