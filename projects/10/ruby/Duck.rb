# Duck.rb | Defines the Duck class which inherits attributes 
# and methods from the FlyingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sarah Whitten
# Date: April 20, 2019
####################################################

require './FlyingBird.rb'
require './Bird.rb'

class Duck < FlyingBird

	def call
    	'Quack!'
	end

end

