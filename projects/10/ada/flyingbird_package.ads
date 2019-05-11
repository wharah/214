-- FlyingBird_package.ads gives FlyingBird-related declarations,
-- and derives FlyingBird from Bird.
-- 
-- Completed by: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Bird_Package; use Bird_Package;

package FlyingBird_Package is

	type FlyingBird_Type is new Bird_Type with private;

	---------------------------------------------------------------
	-- Determine type of FlyingBird (Over-rides Bird.Type_Name()) -
	-- Receive: A_FlyingBird, a FlyingBird_Type.                  -
	-- Return: "FlyingBird".                                      -
	---------------------------------------------------------------
	function  Type_Name(A_FlyingBird : in FlyingBird_Type) return String;

	----------------------------------------------------
	-- Determine motion of FlyingBird                  -
	-- Receive: A_FlyingBird, a FlyingBird_Type.       -
	-- Return: "flew by".                              -
	----------------------------------------------------
 	function Movement(A_FlyingBird : in FlyingBird_Type) return String;

private

	type FlyingBird_Type is new Bird_Type with
        record
            null;
        end record;

end FlyingBird_Package;

