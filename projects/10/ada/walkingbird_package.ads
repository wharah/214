-- WalkingBird_package.ads gives WalkingBird-related declarations,
-- and derives WalkingBird from Bird.
-- 
-- Completed by: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Bird_Package; use Bird_Package;

package WalkingBird_Package is

	type WalkingBird_Type is new Bird_Type with private;

	---------------------------------------------------------------
	-- Determine type of WalkingBird (Over-rides Bird.Type_Name())-
	-- Receive: A_WalkingBird, a WalkingBird_Type.                -
	-- Return: "WalkingBird".                                     -
	---------------------------------------------------------------
	function  Type_Name(A_WalkingBird : in WalkingBird_Type) return String;

	----------------------------------------------------
	-- Determine motion of WalkingBird                 -
	-- Receive: A_WalkingBird, a WalkingBird_Type.     -
	-- Return: "walked by".                            -
	----------------------------------------------------
 	function Movement(A_WalkingBird : in WalkingBird_Type) return String;

private

	type WalkingBird_Type is new Bird_Type with
        record
            null;
        end record;

end WalkingBird_Package;