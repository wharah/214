-- WalkingBird_package.adb gives WalkingBird-related definitions
-- by over-riding Bird-related definitions.
--
-- By: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body WalkingBird_Package is

	-----------------------------------------------------------------
	-- Determine type of a WalkingBird (Over-rides Bird.Type_Name())-
	-- Receive: A_WalkingBird, a WalkingBird_Type.                    -
	-- Return: "FlyingBird".                                        -
	-----------------------------------------------------------------

 	function Type_Name(A_WalkingBird : in WalkingBird_Type) return String is
   		begin
    		return "WalkingBird";
   		end Type_Name;


   	function Movement(A_WalkingBird : in WalkingBird_Type) return String is
   		begin
   			return "walked by";
   		end Movement;

end WalkingBird_Package;