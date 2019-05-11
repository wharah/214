Script started on Wed 20 Feb 2019 09:35:20 PM EST
smw42@gold34:~/CS214/projects/03$ cat letter_grade.adb
-- letter_grade computes the letter grade for a given number grade
--
-- Input: The number grade
-- Output: The letter grade associated with each number grade
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: February 19, 2019
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure letter_grade is

    grade_string : String(1..3) := "   ";
    charsRead : Natural;

    function letterGrade(grade_string : string) return string is
    grade : Integer := Integer'Value(grade_string);
    begin
        case grade / 10 is
            when 10 => return "A";
            when 9 => return "A";
            when 8 => return "B";
            when 7 => return "C";
            when 6 => return "D";
            when others => return "F";
        end case;
    end letterGrade;

begin
    Put("Enter your number grade: ");
    Get_Line(grade_string, charsRead);
    Put("Your letter grade is: ");
    Put( letterGrade(grade_string) );
    New_Line;
end letter_grade;
smw42@gold34:~/CS214/projects/03$ gnatmake letter_grade
gcc-5 -c letter_grade.adb
gnatbind-5 -x letter_grade.ali
gnatlink-5 letter_grade.ali
smw42@gold34:~/CS214/projects/03$ ./letter_grade
Enter your number grade: 100
Your letter grade is: A
smw42@gold34:~/CS214/projects/03$ ./letter_grade
Enter your number grade: 95
Your letter grade is: A
smw42@gold34:~/CS214/projects/03$ ./letter_grade
Enter your number grade: 85
Your letter grade is: B
smw42@gold34:~/CS214/projects/03$ ./letter_grade
Enter your number grade: 75
Your letter grade is: C
smw42@gold34:~/CS214/projects/03$ ./letter_grade
Enter your number grade: 65
Your letter grade is: D
smw42@gold34:~/CS214/projects/03$ ./letter_grade
Enter your number grade: 55
Your letter grade is: F
smw42@gold34:~/CS214/projects/03$ ./letter_grade
Enter your number grade: 31
Your letter grade is: F
smw42@gold34:~/CS214/projects/03$ exit

Script done on Wed 20 Feb 2019 09:37:05 PM EST
