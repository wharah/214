-- quadratic.adb computes the roots of a quadratic function
--
-- Input: a, b, and c, integers
-- Output: the roots
--
-- Author: Sarah Whitten
-- Date: March 4, 2019
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;

procedure quadratic is
	
	a, b, c, root1, root2 : float;

	function find_roots(a, b, c : in float; root1, root2 : in out float) return boolean is
		det : float;

	begin
		det := ((b * b) - (4.0 * a * c));
		if a /= 0.0 then
			if det >= 0.0 then
				root1 := (-1.0 * b + Sqrt (b * b - 4.0 * a * c)) / (2.0 * a);
				root2 := (-1.0 * b - Sqrt (b * b - 4.0 * a * c)) / (2.0 * a);
				return True;
			else 
				Put_line("*** quadraticRoots(): b^2 - 4ac is negative!");
				return False;
			end if;
		else 
			Put_line("***QuadraticRoots(): a is zero!");
			return False;
		end if;
	end find_roots;

begin
	Put_Line("Enter a, b, and c from your quadratic equation:");
	Get(a);
	Get(b);
	Get(c);
	root1 := 0.0;
	root2 := 0.0;
	if find_roots(a, b, c, root1, root2) = True then
		Put("The real roots are: ");
		Put(Float'Image(root1));
		Put(" and ");
		Put_line(Float'Image(root2));
	end if;
end;
