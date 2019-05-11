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
