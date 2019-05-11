# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sarah Whitten
# Date: April 20, 2019
####################################################

require './Bird.rb'
require './FlyingBird'

class Goose < FlyingBird

	def call
    	'Honk!'
	end

end

