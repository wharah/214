Script started on Fri 08 Mar 2019 05:11:32 PM EST
smw42@gold34:~/CS214/labs/06$ cat average.adb
-- average.adb "test-drives" function Average.
-- Precondition: theArray is an array of numbers.
-- Output: the average of the numbers.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: March 6, 2019
-----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)

procedure average is

	type Vector is array ( Positive range <> ) of Float;

	array0 : Vector := ( 0.0, 0.0 );
	array1 : Vector := ( 9.0, 8.0, 7.0, 6.0 );

-----------------------------------------------
-- sum() sums the values in an array         --
-- Receive: anArray, an array of numbers     --
-- Return: the sum of the values in anArray. --
-----------------------------------------------
function sum(A : Vector) return Float is 
  	Total : Float := 0.0; 
begin 
    for I in A'Range 
    	loop 
     		Total := Total + A(I); 
    	end loop; 
    return Total; 
  end sum; 
	
---------------------------------------------------
-- average() averages the values in an array     --
-- Receive: anArray, an array of numbers         --
-- Return: the average of the values in anArray. --
---------------------------------------------------
function average( anArray : Vector ) return Float is
	avg : Float;
begin
	if anArray'Length = 2 and anArray = ( 0.0, 0.0 ) then
		return 0.0;
	else
		avg := sum(anArray) / Float(anArray'Length);
		return avg;
	end if;
end average;

begin
   Put(" average 0 is ");
   Put( average(array0) );
   New_line;
   Put(" average 1 is ");
   Put( average(array1) );
   New_line;
end average;

smw42@gold34:~/CS214/labs/06$ gnatmake average.adb
gcc-5 -c average.adb
gnatbind-5 -x average.ali
gnatlink-5 average.ali
smw42@gold34:~/CS214/labs/06$ ./average
 average 0 is  0.00000E+00
 average 1 is  7.50000E+00
smw42@gold34:~/CS214/labs/06$ exit

Script done on Fri 08 Mar 2019 05:12:13 PM EST
