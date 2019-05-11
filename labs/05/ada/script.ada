Script started on Fri 01 Mar 2019 09:44:54 PM EST
smw42@gold34:~/CS214/labs/05$ cat split.adb
-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: March 1, 2019
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure split is

   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String  := EMPTY_STRING;
   Pos, Chars_read       : Natural;

   ------------------------------------------------
   --  split() splits a string in two.           
   -- Receive: The_String, the string to be split,
   --          Position, the split index.        
   -- PRE: 0 < Position <= The_String.length(). 
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
   procedure split(Astring : in String; Pos : in Natural; Part1, Part2 : out String) is
   begin
   if Pos = 1 then
      Move("", Part1);
      Part2 := Astring;
   else
      Move(Astring(Astring'First .. Pos), Part1);
      Move(Astring(Pos + 1 .. Astring'Last), Part2);
   end if;
   end split;

begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   split(Astring, Pos, Part1, Part2);

   Put("The first part is ");
   Put_Line(Part1);
   Put("and the second part is ");
   Put_Line(Part2);

end split;

smw42@gold34:~/CS214/labs/05$ gnatmake split
gcc-5 -c split.adb
gnatbind-5 -x split.ali
gnatlink-5 split.ali
smw42@gold34:~/CS214/labs/05$ ./split
To split a string, enter the string: hello
Enter the split position: 1
The first part is                                         
and the second part is hello                                   
smw42@gold34:~/CS214/labs/05$ ./split
To split a string, enter the string: hello
Enter the split position: 3
The first part is hel                                     
and the second part is lo                                      
smw42@gold34:~/CS214/labs/05$ ./split
To split a string, enter the string: hello
Enter the split position: 5
The first part is hello                                   
and the second part is                                         
smw42@gold34:~/CS214/labs/05$ exit

Script done on Fri 01 Mar 2019 09:45:49 PM EST
