Script started on Wed 20 Feb 2019 09:44:28 PM EST
smw42@gold34:~/CS214/projects/03$ cat letter_grade.rb
Script started on Wed 20 Feb 2019 09:27:30 PM EST
smw42@gold34:~/CS214/projects/03$ exit

Script done on Wed 20 Feb 2019 09:27:35 PM EST
smw42@gold34:~/CS214/projects/03$ cat letter_grade.rblojure -m letter_grade                       ruby letter_grade.rb
Enter your grade: 51
Your letter grade is: F
smw42@gold34:~/CS214/projects/03$ script script.ruby
Script started, file is script.ruby
smw42@gold34:~/CS214/projects/03$ cat letter_grade.rb
#! /usr/bin/ruby
# letter_grade.rb translates a number grade into a letter grade
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
################################################################

# Input:  Number grade
# Output: The corresponding letter grade

def letterGrade (grade_str)
    grade = grade_str.to_i
    case grade / 10
        when 10 then "A"
        when 9 then "A"
        when 8 then "B"
        when 7 then "C"
        when 6 then "D"
        else "F"
    end
end

if __FILE__ == $0
   print "Enter your grade: "
   grade_str = gets
   print "Your letter grade is: "
   puts letterGrade(grade_str)
endsmw42@gold34:~/CS214/projects/03$ ruby letter_grade.rb
Enter your grade: 100
Your letter grade is: A
smw42@gold34:~/CS214/projects/03$ ruby letter_grade.rb
Enter your grade: 95
Your letter grade is: A
smw42@gold34:~/CS214/projects/03$ ruby letter_grade.rb
Enter your grade: 85
Your letter grade is: B
smw42@gold34:~/CS214/projects/03$ ruby letter_grade.rb
Enter your grade: 75
Your letter grade is: C
smw42@gold34:~/CS214/projects/03$ ruby letter_grade.rb
Enter your grade: 65
Your letter grade is: D
smw42@gold34:~/CS214/projects/03$ ruby letter_grade.rb
Enter your grade: 55
Your letter grade is: F
smw42@gold34:~/CS214/projects/03$ ruby letter_grade.rb
Enter your grade: 41
Your letter grade is: F
smw42@gold34:~/CS214/projects/03$ exit
Script done, file is script.ruby
smw42@gold34:~/CS214/projects/03$ [Ksmw42@gold34:~/CS214/projects/03$ script      clear
[3;J[H[2Jsmw42@gold34:~/CS214/projects/03$ script script.java script.ada script.                                     script script al   .all
Script started, file is script.all
smw42@gold34:~/CS214/projects/03$ cat script.java script.ada script.ruby clojure/src   script.clojure                                  clojure/script.clojure script.ruby
Script started on Wed 20 Feb 2019 09:32:33 PM EST
smw42@gold34:~/CS214/projects/03$ cat LetterGrade.java
/* LetterGrade.java is a driver for function letterGrade().
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 ****************************************************************/

import java.util.Scanner;

public class LetterGrade {

    public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your number grade: "); // prompt

      String grade_str = keyboard.next();       // read grade
      System.out.println(letterGrade(grade_str)); // display its letter
    }


   /***************************************************************
    * letterGrade() converts a number grade into its letter equivalent.
    *
    * Receive: grade_str, a string.
    * Return: the letter grade corresponding to number grade.
    */

    public static String letterGrade(String grade_str) 
    {
        int grade = Integer.parseInt(grade_str);
        switch (grade / 10) {
            case 10: case 9: return "A";
            case 8: return "B";
            case 7: return "C";
            case 6: return "D";
            default: return "F";
        }
    }
}
smw42@gold34:~/CS214/projects/03$ javac -deprecation LetterGrade.java
smw42@gold34:~/CS214/projects/03$ java LetterGrade

Enter your number grade: 
100
A
smw42@gold34:~/CS214/projects/03$ java LetterGrade

Enter your number grade: 
95
A
smw42@gold34:~/CS214/projects/03$ java LetterGrade

Enter your number grade: 
85
B
smw42@gold34:~/CS214/projects/03$ java LetterGrade

Enter your number grade: 
75
C
smw42@gold34:~/CS214/projects/03$ java LetterGrade

Enter your number grade: 
65
D
smw42@gold34:~/CS214/projects/03$ java LetterGrade

Enter your number grade: 
55
F
smw42@gold34:~/CS214/projects/03$ java LetterGrade

Enter your number grade: 
12
F
smw42@gold34:~/CS214/projects/03$ exit

Script done on Wed 20 Feb 2019 09:33:59 PM EST
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
Script started on Wed 20 Feb 2019 09:41:52 PM EST
smw42@gold34:~/CS214/projects/03/clojure$ cat src/letter_grade.clj
;;;; letter_grade.clj is a driver for function letterGrade().
;;;;
;;;; Input: A number grade
;;;; Output: The corresponding letter grade
;;;;
;;;; Usage: clojure -m letter_grade
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Sarah Whitten
;;;; Date: February 19, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns letter_grade)                    ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; letterGrade() returns the letter for a given grade.
;;; Receive: grade, a string.
;;; Return: the corresponding letter grade
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn parse-int [s]
   (Integer. (re-find  #"\d+" s ))
)

(defn letterGrade [grade]
    (cond
        (= 10 (/ (parse-int grade) 10))  "A"
        (<= 9 (/ (parse-int grade) 10))  "A"
        (<= 8 (/ (parse-int grade) 10))  "B"
        (<= 7 (/ (parse-int grade) 10))  "C"
        (<= 6 (/ (parse-int grade) 10))  "D"
        :else                            "F"
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main() test-drives our yearCode() function.
;;; Input: year: one of {freshman, sophomore, junior, or senior}.
;;; Output: the code corresponding to year.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
 (print "\nEnter your grade: ") (flush)
 (let
    [ grade (read-line) ]
    (println (letterGrade grade))      ; display its code
 )
)
smw42@gold34:~/CS214/projects/03/clojure$ clojure -m letter_grade

Enter your grade: 100
A
smw42@gold34:~/CS214/projects/03/clojure$ clojure -m letter_grade

Enter your grade: 95
A
smw42@gold34:~/CS214/projects/03/clojure$ clojure -m letter_grade

Enter your grade: 85
B
smw42@gold34:~/CS214/projects/03/clojure$ clojure -m letter_grade

Enter your grade: 75
C
smw42@gold34:~/CS214/projects/03/clojure$ clojure -m letter_grade

Enter your grade: 65
D
smw42@gold34:~/CS214/projects/03/clojure$ clojure -m letter_grade

Enter your grade: 55
F
smw42@gold34:~/CS214/projects/03/clojure$ clojure -m letter_grade

Enter your grade: 23
F
smw42@gold34:~/CS214/projects/03/clojure$ exit

Script done on Wed 20 Feb 2019 09:43:12 PM EST
Script started on Wed 20 Feb 2019 09:50:20 PM EST
smw42@gold34:~/CS214/projects/03$ cat letter_grade.rb
#! /usr/bin/ruby
# letter_grade.rb translates a number grade into a letter grade
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
################################################################

# Input:  Number grade
# Output: The corresponding letter grade

def letterGrade (grade_str)
    grade = grade_str.to_i
    case grade / 10
        when 10 then "A"
        when 9 then "A"
        when 8 then "B"
        when 7 then "C"
        when 6 then "D"
        else "F"
    end
end

if __FILE__ == $0
   print "Enter your grade: "
   grade_str = gets
   print "Your letter grade is: "
   puts letterGrade(grade_str)
end

smw42@gold34:~/CS214/projects/03$ ruby letter_grade.rb
Enter your grade: 100
Your letter grade is: A
smw42@gold34:~/CS214/projects/03$ ruby letter_grade.rb
Enter your grade: 95
Your letter grade is: A
smw42@gold34:~/CS214/projects/03$ ruby letter_grade.rb
Enter your grade: 85
Your letter grade is: B
smw42@gold34:~/CS214/projects/03$ ruby letter_grade.rb
Enter your grade: 75
Your letter grade is: C
smw42@gold34:~/CS214/projects/03$ ruby letter_grade.rb
Enter your grade: 65
Your letter grade is: D
smw42@gold34:~/CS214/projects/03$ ruby letter_grade.rb
Enter your grade: 55
Your letter grade is: F
smw42@gold34:~/CS214/projects/03$ ruby letter_grade.rb
Enter your grade: 41
Your letter grade is: F
smw42@gold34:~/CS214/projects/03$ exit

Script done on Wed 20 Feb 2019 09:51:41 PM EST
smw42@gold34:~/CS214/projects/03$ exit
Script done, file is script.all
smw42@gold34:~/CS214/projects/03$ a2ps script.all
[script.all (plain): 4 pages on 2 sheets]
request id is Calvin_UniFLOW-21 (0 file(s))
[Total: 4 pages on 2 sheets] sent to the default printer
[1 line wrapped]
smw42@gold34:~/CS214/projects/03$ exit
