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
