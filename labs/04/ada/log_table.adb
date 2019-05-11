-- log_table.adb computes a table of logarithms.
--
-- Input: start, stop, increment, three reals.
-- Precondition: increment is positive.
-- Output: A table of logarithms beginning with log(start),
--         ending with log(stop), with intervals of increment.
--
-- Begun by: Prof. Adams, for CS 214 at Calvin College.
-- Completed by:
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
with  Ada.Text_IO, Ada.Integer_Text_IO;
with Ada.Numerics.Elementary_functions;
use  Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure log_table is

    Start, Stop, Increment, Num : Float;

begin                                           -- Prompt for input
    Put_Line("To print a table of logarithms,");
    Put("enter the start, stop, and increment values:");
    New_Line;
    Get(Start); Get(Stop); Get(Increment);
    Num := Start;

    -- Replace this line with a loop to generate the table of logs.
    while Num <= Stop loop
        Put("The logarithm of ");
        Put(Integer(Num));
        Put(" is ");
        Put(Ada.Numerics.Elementary_Functions.Log(Num, 10.0));
        New_Line;
        Num := Num + Increment;
    end loop;

end log_table;
