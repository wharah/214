Script started on Fri 15 Feb 2019 09:30:16 AM EST
smw42@gold17:~/CS214/labs/03$ cat year_codes.adb
-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
--
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

   year : String(1..9) := "         ";
   charsRead : Natural;

   -- replace this comment with the definition of yearCode()
   function yearCode(year : string) return integer is
   begin
	if year = "freshman " then
		return 1;
	elsif ( year = "sophomore" ) then
		return 2;
	elsif ( year = "junior   " ) then
		return 3;
	elsif ( year = "senior   " ) then
		return 4;	
	else
		return 0;
	end if;
   end yearCode;

begin                                          
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(year, charsRead);                   -- Input
   Put( yearCode(year) );                       -- Convert and output
   New_Line;
end year_codes;

smw42@gold17:~/CS214/labs/03$ gnatmake year_codes.adb
gcc-5 -c year_codes.adb
gnatbind-5 -x year_codes.ali
gnatlink-5 year_codes.ali
smw42@gold17:~/CS214/labs/03$ ./year_codes
Enter your academic year: freshman 
          1
smw42@gold17:~/CS214/labs/03$ ./year_codes
Enter your academic year: sophomore
          2
smw42@gold17:~/CS214/labs/03$ ./year_codes
Enter your academic year: junior   
          3
smw42@gold17:~/CS214/labs/03$ ./year_codes
Enter your academic year: senior   
          4
smw42@gold17:~/CS214/labs/03$ ./year_codes
Enter your academic year: something
          0
smw42@gold17:~/CS214/labs/03$ exit

Script done on Fri 15 Feb 2019 09:31:50 AM EST
