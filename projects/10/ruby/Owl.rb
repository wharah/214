# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sarah Whitten
# Date: April 20, 2019
####################################################

require './Bird.rb'
require './FlyingBird'

class Owl < FlyingBird

	def call
    	'Hoo!'
	end

end

