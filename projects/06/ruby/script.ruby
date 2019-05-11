Script started on Tue 12 Mar 2019 10:24:07 PM EDT
smw42@gold29:~/CS214/projects/06$ cat print.rb
# print.rb creates and displays a user-specified array
# Output: the contents of the array
#
# Created by: Sarah Whitten
# Date: March 11, 2019
########################################################

###############################################
# printArray() displays the contents of the array
# Receive: anArray, an array of numbers
# Return: void
################################################

def printArray anArray
	anArray.each do |i|
		puts i
	end
end

###############################################
# readArray() inputs values into the array
# Receive: anArray, an array of numbers
# Return: void
################################################

def readArray anArray
	for i in 1..anArray.size
		anArray[i] = gets.to_i
	end
end

def main
	puts "Enter the size of your array:"
	size = gets.to_i
	anArray = Array.new size
	puts "Enter the contents of your array:"
	readArray anArray
	print "Here are the contents of your array:"
	printArray anArray
end

main
smw42@gold29:~/CS214/projects/06$ ruby print.rb
Enter the size of your array:
3
Enter the contents of your array:
1
2
3
Here are the contents of your array:
1
2
3
smw42@gold29:~/CS214/projects/06$ exit

Script done on Tue 12 Mar 2019 10:24:30 PM EDT
