Script started on Tue 02 Apr 2019 04:06:36 PM EDT
smw42@gold02:~/CS214/projects/07$ cat NameTester.rb
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sarah Whitten
# Date: April 2, 2019
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

  def setFirst(first)
    @first = first
  end

  def setMiddle(middle)
    @middle = middle
  end

  def setLast(last)
    @last = last
  end

  def lfmi()
    last + ", " + first + " " + middle[0] + "."
  end

  def read()
    @first = gets.strip
    @middle = gets.strip
    @last = gets.strip
  end
end

def testName
	name = Name.new("John", "Paul", "Jones")

	assert name.first == "John", "first failed"
	assert name.middle == "Paul", "middle failed"
	assert name.last == "Jones", "last failed"
	assert name.fullName == "John Paul Jones", "fullName failed"
	assert name.print == "John Paul Jones", "print failed"

  # test setFirst(), setMiddle(), setLast(), and lfmi()
  name.setFirst("James")
  name.setMiddle("Harrell")
  name.setLast("Whitten")
  assert name.first == "James", "first failed"
  assert name.middle == "Harrell", "middle failed"
  assert name.last == "Whitten", "last failed"
  assert name.lfmi == "Whitten, James H.", "lfmi failed"

  # test read()
  name.read
  name.print

   	print "All tests passed!\n"
end

testName
smw42@gold02:~/CS214/projects/07$ ruby NameTester.rb
John Paul Jones
Sarah
Michelle
Whitten
Sarah Michelle Whitten
All tests passed!
smw42@gold02:~/CS214/projects/07$ ruby NameTester.rb
John Paul Jones
James
Harrell
Whitten
James Harrell Whitten
All tests passed!
smw42@gold02:~/CS214/projects/07$ exit

Script done on Tue 02 Apr 2019 04:07:21 PM EDT
