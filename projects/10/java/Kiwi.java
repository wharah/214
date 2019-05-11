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

