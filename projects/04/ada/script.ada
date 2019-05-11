Script started on Tue 26 Feb 2019 10:27:42 PM EST
smw42@gold10:~/CS214/projects/04$ cat factorial.adb
-- factorial.adb computes the factorial of a given number
--
-- Input: Integer
-- Output: Factorial
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: February 25, 2019
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure factorial is

	base, result : Integer;

	function factorialOf(base : Integer) return Integer is
	begin
		result := 1;
		for i in 1 .. base loop
			result := result * i;
		end loop;
		return result;
	end factorialOf;

begin
	Put("To compute n!, enter n: ");
	Get(base);
	result := factorialOf(base);
	Put(base);
	Put("! = ");
	Put(result);
	New_Line;
end factorial;
smw42@gold10:~/CS214/projects/04$ gnatmake factorial.adb
gcc-5 -c factorial.adb
gnatbind-5 -x factorial.ali
gnatlink-5 factorial.ali
smw42@gold10:~/CS214/projects/04$ ./factorial
To compute n!, enter n: 1
          1! =           1
smw42@gold10:~/CS214/projects/04$ ./factorial
To compute n!, enter n: 3
          3! =           6
smw42@gold10:~/CS214/projects/04$ ./factorial
To compute n!, enter n: 6
          6! =         720
smw42@gold10:~/CS214/projects/04$ exit

Script done on Tue 26 Feb 2019 10:28:38 PM EST
