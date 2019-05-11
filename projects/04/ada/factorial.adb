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
