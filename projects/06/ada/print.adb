-- print.adb creates and displays a user-createed array
--
-- Input: size of array, content of array
-- Output: the contents of the array
--
-- Author: Sarah Whitten
-- Date: March 11, 2019
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure print is

	type Float_Array is array (Positive range <>) of float;

	theSize : Integer;
	anArray : Float_Array(1..theSize);

	procedure print_array(theSize : Integer; anArray : in Float_Array) is

	begin
		for I in 1..theSize loop
			Put_Line(Float'Image(anArray(I)));
		end loop;
	end print_array;

	procedure read_array(theSize : Integer; anArray : in out Float_Array) is

	begin
		for I in 1..theSize loop
			Get(anArray(I));
		end loop;
	end read_array;

begin
	Put_Line("Enter the size of your array:");
	Get(theSize);
	Put_Line("Enter the contents of your array:");
	read_array(theSize, anArray);
	Put_Line("Here are the contents of your array:");
	print_array(theSize, anArray);
end print;
