Script started on Fri 29 Mar 2019 04:42:14 PM EDT
smw42@gold06:~/CS214/labs/07$ cat NameTester.rb
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sarah Whitten
# Date: March 29, 2019
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

class Name
	def initialize(first, middle, last)
       	@first, @middle, @last = first, middle, last
    end

    attr_reader :first, :middle, :last

    def fullName()
    	first + " " + middle + " " + last
    end

    def print()
    	puts self.fullName
    	self.fullName
    end
end

def testName
  	name = Name.new("John", "Paul", "Jones")

  	assert name.first == "John", "first failed"
	assert name.middle == "Paul", "middle failed"
	assert name.last == "Jones", "last failed"
	assert name.fullName == "John Paul Jones", "fullName failed"
	assert name.print == "John Paul Jones", "print failed"
   
   	print "All tests passed!\n"
end

testName
smw42@gold06:~/CS214/labs/07$ ruby NameTester.rb
John Paul Jones
All tests passed!
smw42@gold06:~/CS214/labs/07$ exit

Script done on Fri 29 Mar 2019 04:43:17 PM EDT
