Script started on Fri 05 Apr 2019 06:13:15 PM EDT
smw42@gold33:~/CS214/labs/08/ruby$ cat nameTester.rb Name.rb
# nameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sarah Whitten
# Date: April 5, 2019
####################################################
$LOAD_PATH << '.'

require 'test/unit/assertions'
require 'Name'
include Test::Unit::Assertions

def testName
    name = Name.new("John", "Paul", "Jones")

    assert name.first == "John", 
           "first failed"
    assert name.middle == "Paul",
           "middle failed"
    assert name.last == "Jones",
           "last failed"
    assert name.fullName == "John Paul Jones",
           "fullName failed"
    assert name.print == "John Paul Jones",
           "print failed"
   
    print "All tests passed!\n"
end

testName
# Name.rb declares class Name and its operations
#
# Completed by: Sarah Whitten
# Date: April 5, 2019
####################################################

module Names

  	def initialize(first, middle, last)
   		@first, @middle, @last = first, middle, last
  	end

  	attr_reader :first, :middle, :last

  	def fullName
    	@first + " " + @middle + " " + @last
  	end

  	def print
    	puts fullName
    	fullName
  	end
end

class Name
	include Names
end
smw42@gold33:~/CS214/labs/08/ruby$ ruby nameTester.rb
John Paul Jones
All tests passed!
smw42@gold33:~/CS214/labs/08/ruby$ exit

Script done on Fri 05 Apr 2019 06:13:44 PM EDT
