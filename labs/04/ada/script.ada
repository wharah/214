Script started on Sat 23 Feb 2019 05:15:24 PM EST
smw42@gold32:~/CS214/labs/04$ cat log_table.adb
-- log_table.adb computes a table of logarithms.
--
-- Input: start, stop, increment, three reals.
-- Precondition: increment is positive.
-- Output: A table of logarithms beginning with log(start),
--         ending with log(stop), with intervals of increment.
--
-- Begun by: Prof. Adams, for CS 214 at Calvin College.
-- Completed by: Sarah Whitten
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
smw42@gold32:~/CS214/labs/04$ gnatmake log_table
gcc-5 -c log_table.adb
gnatbind-5 -x log_table.ali
gnatlink-5 log_table.ali
smw42@gold32:~/CS214/labs/04$ ./log_table
To print a table of logarithms,
enter the start, stop, and increment values:
1
10
1
The logarithm of           1 is  0.00000E+00
The logarithm of           2 is  3.01030E-01
The logarithm of           3 is  4.77121E-01
The logarithm of           4 is  6.02060E-01
The logarithm of           5 is  6.98970E-01
The logarithm of           6 is  7.78151E-01
The logarithm of           7 is  8.45098E-01
The logarithm of           8 is  9.03090E-01
The logarithm of           9 is  9.54243E-01
The logarithm of          10 is  1.00000E+00
smw42@gold32:~/CS214/labs/04$ exit

Script done on Sat 23 Feb 2019 05:16:01 PM EST
