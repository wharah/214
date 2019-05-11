Script started on Tue 12 Mar 2019 10:18:00 PM EDT
smw42@gold29:~/CS214/projects/06$ cat print.adb
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
smw42@gold29:~/CS214/projects/06$ gnatmake print
gcc-5 -c print.adb
print.adb:18:34: warning: "theSize" may be referenced before it has a value
gnatbind-5 -x print.ali
gnatlink-5 print.ali
smw42@gold29:~/CS214/projects/06$ ./print
Enter the size of your array:
3
Enter the contents of your array:
1
2
3
Here are the contents of your array:
 1.00000E+00
 2.00000E+00
 3.00000E+00
smw42@gold29:~/CS214/projects/06$ exit

Script done on Tue 12 Mar 2019 10:18:30 PM EDT
