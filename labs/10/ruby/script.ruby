Script started on Sat 20 Apr 2019 06:17:58 PM EDT
smw42@gold33:~/CS214/labs/10/ruby$ cat birds.rb Bird.rb Duck.rb Goose.rb Owl.rb
# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sarah Whitten
# Date: April 20, 2019
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

puts "\n"

# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sarah Whitten
# Date: April 20, 2019
####################################################

class Bird

  	attr_reader :name

  	def initialize(name)
    	@name = name
  	end

  	def call
    	'Squaaaaaaawk!'
	end

	def className
		self.class.to_s
	end

	def print
	    puts name + " " + className + " says " + call
	end

end

# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sarah Whitten
# Date: April 20, 2019
####################################################

require './Bird.rb'

class Duck < Bird

	def call
    	'Quack!'
	end

end

# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sarah Whitten
# Date: April 20, 2019
####################################################

require './Bird.rb'

class Goose < Bird

	def call
    	'Honk!'
	end

end

# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sarah Whitten
# Date: April 20, 2019
####################################################

require './Bird.rb'

class Owl < Bird

	def call
    	'Hoo!'
	end

end

smw42@gold33:~/CS214/labs/10/ruby$ ruby birds.rb

Welcome to the Bird Park!

Hawkeye Bird says Squaaaaaaawk!
Donald Duck says Quack!
Mother Goose says Honk!
Woodsey Owl says Hoo!

smw42@gold33:~/CS214/labs/10/ruby$ exit

Script done on Sat 20 Apr 2019 06:18:41 PM EDT
