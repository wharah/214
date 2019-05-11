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