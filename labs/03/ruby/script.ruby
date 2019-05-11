Script started on Fri 15 Feb 2019 07:33:11 PM EST
smw42@gold34:~/CS214/labs/03$ cat year_codes.rb
#! /usr/bin/ruby
# year_codes.rb translates an academic year into a numeric code
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman, 
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

def yearCode (year)
   if year =~ /freshman/; 1
   elsif year =~ /sophomore/; 2
   elsif year =~ /junior/; 3
   elsif year =~ /senior/; 4
   else 0
   end
end

if __FILE__ == $0
   print "Enter the year: "
   year = gets
   print "Numeric code is: "
   puts yearCode(year)
end

smw42@gold34:~/CS214/labs/03$ ruby year_codes.rb
Enter the year: freshman
Numeric code is: 1
smw42@gold34:~/CS214/labs/03$ ruby year_codes.rb
Enter the year: sophomore
Numeric code is: 2
smw42@gold34:~/CS214/labs/03$ ruby year_codes.rb
Enter the year: junior
Numeric code is: 3
smw42@gold34:~/CS214/labs/03$ ruby year_codes.rb
Enter the year: senior
Numeric code is: 4
smw42@gold34:~/CS214/labs/03$ ruby year_codes.rb
Enter the year: something
Numeric code is: 0
smw42@gold34:~/CS214/labs/03$ ruby year_codes.rb
Enter the year: supersenior
Numeric code is: 4
smw42@gold34:~/CS214/labs/03$ exit

Script done on Fri 15 Feb 2019 07:34:52 PM EST

The input "supersenior" should not give an output that is "4", but should instead give an output of "0". If I'd added code that was specific to "supersenior" then I could have made it so that the output is 5. But I think this is more of a bug than a feature because it's not an accurate representation of which year of school the student is in.