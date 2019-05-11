Script started on Sat 20 Apr 2019 08:09:12 PM EDT
smw42@gold33:~/CS214/projects/10/ada$ cat bird_package.adb bird_package.ads birds.adb duck_package.adb duck_package.ads flyingbird_package.adb flyin 
gbird_package.ads goose_package.adb goose_package.ads kiwi_package.adb kiwi_package.ads ostrich_package.adb ostrich_package.ads owl_package.adb owl_ 
package.ads penguin_package.adb penguin_package.ads walkingbird_package.adb walkingbird_package.ads
-- bird_package.adb gives Bird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Bird_Package is


	----------------------------------------------------
	-- initialization                                  -
	-- Receive: A_Bird, a Bird_Type;                   -
	--          Name, a String                         -
	-- Return: a Bird_Type in which My_Name = Name.    -
	----------------------------------------------------
	procedure Init(A_Bird : out Bird_Type; Name : in String) is
		begin
			A_Bird.My_Name := Name;
		end Init;

	----------------------------------------------------
	-- Name accessor                                   -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: A_Bird.My_Name.                         -
	----------------------------------------------------
	function Name(A_Bird : in Bird_Type) return String is
		begin
			return A_Bird.My_Name;
		end Name;

	----------------------------------------------------
	-- A Bird's Call                                   -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: a default bird-call ("Squawk!").        -
	----------------------------------------------------
	function Call(A_Bird : in Bird_Type) return String is
		begin
			return "Squawk!";
		end Call;

	----------------------------------------------------
	-- Determine type of a Bird (for derived types)    -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: "Bird".                                 -
	----------------------------------------------------
	function Type_Name(A_Bird : in Bird_Type) return String is
		begin
			return "Bird";
		end Type_Name;

	----------------------------------------------------
	-- Output a Bird                                   -
	-- Receive: A_Bird, a Bird or subclass of Bird.    -
	-- Output: Everything known about A_Bird           -
	----------------------------------------------------
	procedure Put(A_Bird : in Bird_Type'Class) is
		begin
			Put( Name(A_Bird) );
			Put( ' ' );
			Put( Type_Name(A_Bird) );
			Put( " just " );
			Put( Movement(A_Bird) );
			Put( " and said " );
			Put( Call(A_Bird) );
		end Put;

end Bird_Package;

-- bird_package.ads gives Bird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

package Bird_Package is

	type Bird_Type is abstract tagged private;

	----------------------------------------------------
	-- initialization                                  -
	-- Receive: A_Bird, a Bird_Type;                   -
	--          Name, a String                         -
	-- Return: a Bird_Type whose My_Name = Name.       -
	----------------------------------------------------
	procedure Init(A_Bird : out Bird_Type; Name : in String);

	----------------------------------------------------
	-- Name accessor                                   -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: A_Bird.My_Name.                         -
	----------------------------------------------------
	function Name(A_Bird : in Bird_Type) return String;

	----------------------------------------------------
	-- A Bird's Call                                   -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: a default bird-call ("Squawk!").        -
	----------------------------------------------------
	function Call(A_Bird : in Bird_Type) return String;

	----------------------------------------------------
	-- Determine type of a Bird (for derived types)    -
	-- Receive: A_Bird, a Bird_Type.                   -
	-- Return: "Bird".                                 -
	----------------------------------------------------
	function Type_Name(A_Bird : in Bird_Type) return String;

	----------------------------------------------------
	-- Output a Bird                                   -
	-- Receive: A_Bird, a Bird or subclass of Bird.    -
	-- Output: Everything known about A_Bird           -
	----------------------------------------------------
	procedure Put(A_Bird : in Bird_Type'Class);

	----------------------------------------------------
 	-- Output a Bird                                   -
 	-- Receive: A_Bird, a Bird or subclass of Bird.    -
 	-- Output: How the bird went past                  -
 	----------------------------------------------------
    function Movement(A_Bird : in Bird_Type) return String is abstract;

	private
		type Bird_Type is
			abstract tagged record
				My_Name : String(1..6);
			end record;

end Bird_Package;

-- birds.adb tests our Birds type hierarchy.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College
-- Completed by: Sarah Whitten
-- Date: April 20, 2019
-----------------------------------------------------

with Bird_Package, 
	FlyingBird_Package,
	WalkingBird_Package,
    Duck_Package, 
    Goose_Package, 
    Owl_Package,
    Penguin_Package,
    Ostrich_Package,
    Kiwi_Package,
    Ada.Text_IO;
use Bird_Package,
    FlyingBird_Package,
	WalkingBird_Package,
    Duck_Package, 
    Goose_Package,
    Owl_Package,
    Penguin_Package,
    Ostrich_Package,
    Kiwi_Package,
    Ada.Text_IO;


procedure Birds is

	Bird1 : FlyingBird_Type;       -- base class
	Bird2 : Duck_Type;       -- derived class 1
	Bird3 : Goose_Type;      -- derived class 2
	Bird4 : Owl_Type;        -- derived class 3
	Bird5 : Penguin_Type;
	Bird6 : Ostrich_Type;
	Bird7 : Kiwi_Type;

begin
	New_Line;
   	Put_Line("Welcome to the Bird Park!");
	Init(Bird1, "Tweety");
	Put(Bird1); New_Line;

	Init(Bird2, "Donald");
	Put(Bird2); New_Line;

	Init(Bird3, "Mother");
	Put(Bird3); New_Line;

	Init(Bird4, "Woodsy");
	Put(Bird4); New_Line;

	Init(Bird5, "Prince");
	Put(Bird5); New_Line;

	Init(Bird6, "Olivia");
	Put(Bird6); New_Line;

	Init(Bird7, "Kellie");
	Put(Bird7); New_Line;
	New_Line;

end Birds;

-- duck_package.adb gives Duck-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Duck_Package is

	----------------------------------------------------
	-- A Duck's Call (Over-rides Bird.Call())          -
	-- Receive: A_Duck, a Duck_Type.                   -
	-- Return: "Quack!"                                -
	----------------------------------------------------
	function Call(A_Duck : in Duck_Type) return String is
		begin 
			return "Quack!";
		end Call;

	------------------------------------------------------------
	-- Determine type of a Duck (Over-rides Bird.Type_Name()) -
	-- Receive: A_Duck, a Duck_Type.                          -
	-- Return: "Duck".                                        -
	-----------------------------------------------------------
	function Type_Name(A_Duck : in Duck_Type) return String is
		begin
			return "Duck";
		end Type_Name;

end Duck_Package;

-- duck_package.ads gives Duck-related declarations,
--
--  and derives Duck from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Bird_Package,
    FlyingBird_Package; 
use Bird_Package,
	FlyingBird_Package;

package Duck_Package is

	type Duck_Type is new Bird_Type with private;

	----------------------------------------------------
	-- A Duck's Call (Over-rides Bird.Call())          -
	-- Receive: A_Duck, a Duck_Type.                   -
	-- Return: "Quack!"                                -
	----------------------------------------------------
	function Call(A_Duck : in Duck_Type) return String;

	------------------------------------------------------------
	-- Determine type of a Duck (Over-rides Bird.Type_Name()) -
	-- Receive: A_Duck, a Duck_Type.                          -
	-- Return: "Duck".                                        -
	-----------------------------------------------------------
	function Type_Name(A_Duck : in Duck_Type) return String;

	private
		type Duck_Type is new FlyingBird_Type with
			record
				null;
			end record;

end Duck_Package;

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

-- goose_package.adb gives Goose-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

package body Goose_Package is

	----------------------------------------------------
	-- A Goose's Call (Over-rides Bird.Call())         -
	-- Receive: A_Goose, a Goose_Type.                 -
	-- Return: "Honk!"                                 -
	----------------------------------------------------
	function Call(A_Goose : in Goose_Type) return String is
		begin
			return "Honk!";
		end Call;

	-----------------------------------------------------
	-- Determine type of a Goose                        -
	-- (Over-rides Bird.Type_Name())                    -
	-- Receive: A_Goose, a Goose_Type.                  -
	-- Return: "Goose".                                 -
	-----------------------------------------------------
	function Type_Name(A_Goose : in Goose_Type) return String is
		begin
			return "Goose";
		end Type_Name;

end Goose_Package;

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

-- kiwi_package.adb gives Kiwi-related definitions
--  by over-riding Bird-related definitions.
--
-- By: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Kiwi_Package is

	----------------------------------------------------
	-- A Kiwi's Call (Over-rides Bird.Call())       -
	-- Receive: A_Kiwi, a Kiwi_Type.             -
	-- Return: "Reeee!"                             -
	----------------------------------------------------
	function Call(A_Kiwi : in Kiwi_Type) return String is
		begin
			return "Reeee!";
		end Call;

	-----------------------------------------------------
	-- Determine type of a Kiwi                      -
	-- (Over-rides Bird.Type_Name())                    -
	-- Receive: A_Kiwi, a Kiwi_Type.              -
	-- Return: "Kiwi".                               -
	-----------------------------------------------------
	function Type_Name(A_Kiwi : in Kiwi_Type) return String is
		begin
			return "Kiwi";
		end Type_Name;

end Kiwi_Package;

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

-- ostrich_package.adb gives Ostrich-related definitions
--  by over-riding Bird-related definitions.
--
-- By: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Ostrich_Package is

	----------------------------------------------------
	-- A Ostrich's Call (Over-rides Bird.Call())       -
	-- Receive: An_Ostrich, a Ostrich_Type.             -
	-- Return: "Snork!"                             -
	----------------------------------------------------
	function Call(An_Ostrich : in Ostrich_Type) return String is
		begin
			return "Snork!";
		end Call;

	-----------------------------------------------------
	-- Determine type of a Ostrich                      -
	-- (Over-rides Bird.Type_Name())                    -
	-- Receive: An_Ostrich, an Ostrich_Type.              -
	-- Return: "Ostrich".                               -
	-----------------------------------------------------
	function Type_Name(An_Ostrich : in Ostrich_Type) return String is
		begin
			return "Ostrich";
		end Type_Name;

end Ostrich_Package;

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

-- owl_package.adb gives Owl-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Owl_Package is

	----------------------------------------------------
	-- A Owl's Call (Over-rides Bird.Call())           -
	-- Receive: An_Owl, an Owl_Type.                   -
	-- Return: "Whoo!"                                 -
	----------------------------------------------------
	function Call(An_Owl : in Owl_Type) return String is
		begin
			return "Hoo!";
		end Call;

	-----------------------------------------------------
	-- Determine type of a Owl                          -
	-- (Over-rides Bird.Type_Name())                    -
	-- Receive: An_Owl, an Owl_Type.                    -
	-- Return: "Owl".                                   -
	-----------------------------------------------------
	function Type_Name(An_Owl : in Owl_Type) return String is
		begin
			return "Owl";
		end Type_Name;

end Owl_Package;

-- owl_package.ads gives Owl-related declarations,
--  and derives Owl from Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Bird_Package,
	FlyingBird_Package; 
use Bird_Package,
	FlyingBird_Package;

package Owl_Package is

	type Owl_Type is new Bird_Type with private;

	----------------------------------------------------
	-- A Owl's Call (Over-rides Bird.Call())           -
	-- Receive: An_Owl, an Owl_Type.                   -
	-- Return: "Whoo!"                                 -
	----------------------------------------------------
	function Call(An_Owl : in Owl_Type) return String;

	-----------------------------------------------------
	-- Determine type of a Owl                          -
	-- (Over-rides Bird.Type_Name())                    -
	-- Receive: An_Owl, an Owl_Type.                    -
	-- Return: "Owl".                                   -
	-----------------------------------------------------
	function Type_Name(An_Owl : in Owl_Type) return String;

	private
		type Owl_Type is new FlyingBird_Type with
			record
				null;
			end record;

end Owl_Package;

-- penguin_package.adb gives Penguin-related definitions
--  by over-riding Bird-related definitions.
--
-- By: Sarah Whitten
-- Date: April 20, 2019
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Penguin_Package is

	----------------------------------------------------
	-- A Penguin's Call (Over-rides Bird.Call())       -
	-- Receive: A_Penguin, a Penguin_Type.             -
	-- Return: "Huh-huhh!"                             -
	----------------------------------------------------
	function Call(A_Penguin : in Penguin_Type) return String is
		begin
			return "Huh-huhh!";
		end Call;

	-----------------------------------------------------
	-- Determine type of a Penguin                      -
	-- (Over-rides Bird.Type_Name())                    -
	-- Receive: A_Penguin, a Penguin_Type.              -
	-- Return: "Penguin".                               -
	-----------------------------------------------------
	function Type_Name(A_Penguin : in Penguin_Type) return String is
		begin
			return "Penguin";
		end Type_Name;

end Penguin_Package;

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

smw42@gold33:~/CS214/projects/10/ada$ gnatmake birds
gcc-5 -c birds.adb
gcc-5 -c bird_package.adb
gcc-5 -c duck_package.adb
gcc-5 -c flyingbird_package.adb
gcc-5 -c goose_package.adb
gcc-5 -c kiwi_package.adb
gcc-5 -c ostrich_package.adb
gcc-5 -c owl_package.adb
gcc-5 -c penguin_package.adb
gcc-5 -c walkingbird_package.adb
gnatbind-5 -x birds.ali
gnatlink-5 birds.ali
smw42@gold33:~/CS214/projects/10/ada$ ./birds

Welcome to the Bird Park!
Tweety FlyingBird just flew by and said Squawk!
Donald Duck just flew by and said Quack!
Mother Goose just flew by and said Honk!
Woodsy Owl just flew by and said Hoo!
Prince Penguin just walked by and said Huh-huhh!
Olivia Ostrich just walked by and said Snork!
Kellie Kiwi just walked by and said Reeee!

smw42@gold33:~/CS214/projects/10/ada$ exit

Script done on Sat 20 Apr 2019 08:12:15 PM EDT
