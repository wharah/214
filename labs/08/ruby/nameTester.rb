# nameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:
# Date:
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
