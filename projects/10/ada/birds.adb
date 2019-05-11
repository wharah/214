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

