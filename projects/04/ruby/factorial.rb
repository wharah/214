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
