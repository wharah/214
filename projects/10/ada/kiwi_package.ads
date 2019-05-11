-- kiwi_package.ads gives Kiwi-related declarations,
--  and derives Kiwi from Bird.
--
-- By: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Bird_Package,
	WalkingBird_Package; 
use Bird_Package,
	WalkingBird_Package;

package Kiwi_Package is

	type Kiwi_Type is new Bird_Type with private;

	-------------------------------------------------
	-- A Kiwi's Call (Over-rides Bird.Call())       -
	-- Receive: A_Kiwi, a Kiwi_Type.                -
	-- Return: "Reeee!"                             -
	-------------------------------------------------
	function Call(A_Kiwi : in Kiwi_Type) return String;

	--------------------------------------------------
	-- Determine type of a Kiwi                      -
	-- (Over-rides Bird.Type_Name())                 -
	-- Receive: A_Kiwi, a Kiwi_Type.                 -
	-- Return: "Kiwi".                               -
	--------------------------------------------------
	function Type_Name(A_Kiwi : in Kiwi_Type) return String;

	private
		type Kiwi_Type is new WalkingBird_Type with
			record
				null;
			end record;

end Kiwi_Package;

