Script started on Tue 05 Mar 2019 10:51:18 PM EST
smw42@gold33:~/CS214/projects/05$ cat quadratic.rb
#! /usr/bin/ruby
# quadratic.rb gives the roots of a quadratic function
# Author: Sarah Whitten
# Date: March 5, 2019
################################################################

def quadratic (a, b, c, roots)
	if a != 0
		det = (b * b) - (4 * a * c)
		if det >= 0
			roots.push((-b + Math.sqrt(det))/(2 * a))
			roots.push((-b - Math.sqrt(det))/(2 * a))
			return true
		else
			print "\n*** quadraticRoots(): b^2 - 4ac is negative!\n"
			return false
		end
	else
		print "\n*** QuadraticRoots(): a is zero!\n"
		return false
	end
end

def main 
	print "Enter a: "
	a = gets.to_i
	print "Enter b: "
	b = gets.to_i
	print "Enter c: "
	c = gets.to_i
	roots = []
	if quadratic(a, b, c, roots) == true
		print "One real root of the quadratic is: #{ roots[0] } \n"
		print "The other real root is: #{ roots[1] } \n"
	end
end

main
smw42@gold33:~/CS214/projects/05$ ruby quadratic.rb
Enter a: 1
Enter b: 1
Enter c: -6
One real root of the quadratic is: 2.0 
The other real root is: -3.0 
smw42@gold33:~/CS214/projects/05$ ruby quadratic.rb
Enter a: 1
Enter b: 1
Enter c: 6

*** quadraticRoots(): b^2 - 4ac is negative!
smw42@gold33:~/CS214/projects/05$ ruby quadratic.rb
Enter a: 0
Enter b: 1
Enter c: 1

*** QuadraticRoots(): a is zero!
smw42@gold33:~/CS214/projects/05$ exit

Script done on Tue 05 Mar 2019 10:52:03 PM EST
