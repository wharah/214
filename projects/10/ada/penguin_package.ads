-- penguin_package.ads gives Penguin-related declarations,
--  and derives Penguin from Bird.
--
-- By: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Bird_Package,
	WalkingBird_Package; 
use Bird_Package,
	WalkingBird_Package;

package Penguin_Package is

	type Penguin_Type is new Bird_Type with private;

	----------------------------------------------------
	-- A Penguin's Call (Over-rides Bird.Call())       -
	-- Receive: A_Penguin, a Penguin_Type.             -
	-- Return: "Huh-huhh!"                             -
	----------------------------------------------------
	function Call(A_Penguin : in Penguin_Type) return String;

	-----------------------------------------------------
	-- Determine type of a Penguin                      -
	-- (Over-rides Bird.Type_Name())                    -
	-- Receive: A_Penguin, a Penguin_Type.              -
	-- Return: "Penguin".                               -
	-----------------------------------------------------
	function Type_Name(A_Penguin : in Penguin_Type) return String;

	private
		type Penguin_Type is new WalkingBird_Type with
			record
				null;
			end record;

end Penguin_Package;

