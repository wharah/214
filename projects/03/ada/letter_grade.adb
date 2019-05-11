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