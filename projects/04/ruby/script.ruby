Script started on Tue 26 Feb 2019 10:30:43 PM EST
smw42@gold10:~/CS214/projects/04$ cat factorial.rb
#! /usr/bin/ruby
# factorial.rb gives the factorial of an integer n
# Author: Sarah Whitten
# Date: February 26, 2019
################################################################

# Input:  n, an integer
# Output: factorial of n

def factorial (base)
	count = 1
	for i in 2..base do
		count = count * i
	end
	return count
end

if __FILE__ == $0
   puts "To compute n!, enter n: "
   base = gets.to_i
   puts "#{ base }! = #{factorial(base)}"
end
smw42@gold10:~/CS214/projects/04$ ruby factorial.rb
To compute n!, enter n: 
1
1! = 1
smw42@gold10:~/CS214/projects/04$ ruby factorial.rb
To compute n!, enter n: 
3
3! = 6
smw42@gold10:~/CS214/projects/04$ ruby factorial.rb
To compute n!, enter n: 
6
6! = 720
smw42@gold10:~/CS214/projects/04$ exit

Script done on Tue 26 Feb 2019 10:31:39 PM EST
