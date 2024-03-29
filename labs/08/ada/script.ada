Script started on Fri 05 Apr 2019 05:25:18 PM EDT
smw42@gold33:~/CS214/labs/08/ada$ cat name_tester.adb
-- name_tester.adb "test-drives" the Name type.
--
-- Begun by: Dr. Adams, CPSC 280, October 1999.
-- Completed by: Sarah Whitten
-- Date: April 5, 2019
----------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;
with Name_Package; use Name_Package;

procedure name_tester is

    aName : Name_Package.Name;

begin
    Init(aName, "John    ", "Paul    ", "Jones   ");

    pragma Assert( getFirst(aName) = "John    ",
                   "getFirst() failed");
    pragma Assert( getMiddle(aName) = "Paul    ", 
                   "getMiddle() failed");
    pragma Assert( getLast(aName) = "Jones   ", 
                   "getLast() failed");
    pragma Assert( getFullName(aName) = "John     Paul     Jones   ",
                   "getFullName() failed");
    Put(aName); New_line;
    Put("All tests passed!"); New_line;
end name_tester;
smw42@gold33:~/CS214/labs/08/ada$ cat name_package.adb
-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: April 5, 2019
---------------------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;

-- package body
package body Name_Package is

	-- definition list

	----------------------------------------------
	-- Init initializes a Name variable          
	-- Receive: Nm, the Name variable;          
	--          First, the first name;         
	--          Middle, the middle name;      
	--          Last, the last name.         
	-- Return: Nm, its fields set to First, 
	--               Middle, and Last.     
	----------------------------------------------

  	procedure Init(Nm: out Name;
                 First, Middle, Last : in String) is
	  	begin
	    	Nm.MyFirst := First;
	    	Nm.MyMiddle := Middle;
	    	Nm.MyLast := Last;
	  	end Init;

  	----------------------------------------------
  	-- getFirst(Name) retrieves Name.myFirst        
  	-- Receive: Nm, a Name.                      
  	-- PRE: Nm has been initialized.            
  	-- Return: Nm.myFirst.                     
  	----------------------------------------------
  	
  	function getFirst( Nm: in Name) return String is
  		begin
    		return Nm.MyFirst;
  		end getFirst;

  	----------------------------------------------
  	-- getMiddle(Name) retrieves Name as a String 
  	-- Receive: Nm, a Name.        
  	-- PRE: Nm has been initialized.
  	-- Return: Nm.myMiddle. 
  	----------------------------------------------
  	
  	function getMiddle( Nm: in Name) return String is
  		begin
     		return Nm.MyMiddle;
  		end getMiddle;

  	----------------------------------------------
  	-- getLast(Name) retrieves Name.myLast       
  	-- Receive: Nm, a Name.                    
  	-- PRE: Nm has been initialized.            
  	-- Return: Nm.myLast.                        
  	----------------------------------------------
  	
  	function getLast( Nm: in Name) return String is
  		begin
     		return Nm.MyLast;
  		end getLast;

  	----------------------------------------------
  	-- getFullName(Name) retrieves Name as a String -
  	-- Receive: Nm, a Name.                      -
  	-- PRE: Nm has been initialized.             -
  	-- Return: a String representation of Nm.    -
  	----------------------------------------------
  	
  	function getFullName( Nm: in Name) return String is
  		begin
    		return Nm.MyFirst & " "
           		& Nm.MyMiddle & " "
           		& Nm.MyLast;
  		end getFullName;

  	----------------------------------------------
  	-- Put(Name) displays a Name value.          -
  	-- PRE: Nm has been initialized.             -
  	-- Receive: Nm, a Name.                      -
  	-- Output: Nm, to the screen.                -
  	----------------------------------------------
  	
  	procedure Put(Nm: in Name) is
  		begin
    		Put( getFullName(Nm) );
  		end Put;

end Name_Package;
smw42@gold33:~/CS214/labs/08/ada$ cat name_package.ads
-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: April 5, 2019
--------------------------------------------------------------

-- package body specification
package Name_Package is 

	-- public section

	type Name is private;

	-- initializer
	procedure Init(Nm: out Name;
                 First, Middle, Last : in String);

	-- return first name
	function getFirst( Nm: in Name) return String;

	-- return middle name
	function getMiddle( Nm: in Name) return String;

	-- return last name
	function getLast( Nm: in Name) return String;

	-- return full name as string
  	function getFullName( Nm: in Name) return String;

  	-- print full name
  	procedure Put(Nm: in Name);

	-- private section
	private

		NAME_SIZE : constant Positive := 8;

  		type Name is
      		record
         		myFirst,
         		myMiddle,
         		MyLast : String(1..NAME_SIZE);
      		end record;

end Name_Package;
smw42@gold33:~/CS214/labs/08/ada$ gcc -c name_tester.adb
smw42@gold33:~/CS214/labs/08/ada$ gcc -c name_package.adb
smw42@gold33:~/CS214/labs/08/ada$ ./name_tester
John     Paul     Jones   
All tests passed!
smw42@gold33:~/CS214/labs/08/ada$ exit

Script done on Fri 05 Apr 2019 05:26:29 PM EDT
