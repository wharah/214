-- goose_package.ads gives Goose-related declarations,
--
--  and derives Goose from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Bird_Package,
    FlyingBird_Package; 
use Bird_Package,
	FlyingBird_Package;

package Goose_Package is

	type Goose_Type is new Bird_Type with private;

	----------------------------------------------------
	-- A Goose's Call (Over-rides Bird.Call())         -
	-- Receive: A_Goose, a Goose.                      -
	-- Return: "Honk!"                                 -
	----------------------------------------------------
	function Call(A_Goose : in Goose_Type) return String;

	-----------------------------------------------------
	-- Determine type of a Goose                        -
	-- (Over-rides Bird.Type_Name())                    -
	-- Receive: A_Goose, a Goose.                       -
	-- Return: "Goose".                                 -
	-----------------------------------------------------
	function Type_Name(A_Goose : in Goose_Type) return String;

	private
		type Goose_Type is new FlyingBird_Type with
			record
				null;
			end record;

end Goose_Package;

