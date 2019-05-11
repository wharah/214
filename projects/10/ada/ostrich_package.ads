-- ostrich_package.ads gives Ostrich-related declarations,
--  and derives Ostrich from Bird.
--
-- By: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Bird_Package,
	WalkingBird_Package; 
use Bird_Package,
	WalkingBird_Package;

package Ostrich_Package is

	type Ostrich_Type is new Bird_Type with private;

	----------------------------------------------------
	-- A Ostrich's Call (Over-rides Bird.Call())       -
	-- Receive: An_Ostrich, an Ostrich_Type.             -
	-- Return: "Snork!"                             -
	----------------------------------------------------
	function Call(An_Ostrich : in Ostrich_Type) return String;

	-----------------------------------------------------
	-- Determine type of a Ostrich                      -
	-- (Over-rides Bird.Type_Name())                    -
	-- Receive: An_Ostrich, a Ostrich_Type.              -
	-- Return: "Ostrich".                               -
	-----------------------------------------------------
	function Type_Name(An_Ostrich : in Ostrich_Type) return String;

	private
		type Ostrich_Type is new WalkingBird_Type with
			record
				null;
			end record;

end Ostrich_Package;

