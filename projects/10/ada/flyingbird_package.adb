-- FlyingBird_package.adb gives FlyingBird-related definitions
-- by over-riding Bird-related definitions.
--
-- By: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body FlyingBird_Package is

 	-----------------------------------------------------------------
 	-- Determine type of a FlyingBird (Over-rides Bird.Type_Name()) -
 	-- Receive: A_FlyingBird, a FlyingBird_Type.                    -
 	-- Return: "FlyingBird".                                        -
 	-----------------------------------------------------------------

	function Type_Name(A_FlyingBird : in FlyingBird_Type) return String is
		begin
	    	return "FlyingBird";
	   	end Type_Name;


	function Movement(A_FlyingBird : in FlyingBird_Type) return String is
	   	begin
	   		return "flew by";
	   	end Movement;

end FlyingBird_Package;

