Script started on Sat 20 Apr 2019 08:32:47 PM EDT
smw42@gold33:~/CS214/projects/10/ruby$ cat Bird.rb birds.rb Duck.rb FlyingBird.rb Goose.rb Kiwi.rb Ostrich.rb Owl.rb Penguin.rb WalkingBird.rb
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
    	'Squawk!'
	end

	def className
		self.class.to_s
	end

	def movement
		'went by'
	end

	def print
	    puts name + " " + className + " just " + movement + " and said " + call
	end

end

# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sarah Whitten
# Date: April 20, 2019
######################################################

require './Bird.rb'
require './FlyingBird.rb'
require './WalkingBird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'
require './Penguin.rb'
require './Ostrich.rb'
require './Kiwi.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

bird4 = Penguin.new "Pingu"
bird4.print

bird5 = Ostrich.new "Orla"
bird5.print

bird6 = Kiwi.new "Kellie"
bird6.print

puts "\n"

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

# FlyingBird.rb | Defines a FlyingBird subclass 
# to be extended by specific flying-bird sub-classes.
#
# By: Sarah Whitten
# Date: April 20, 2019
####################################################

class FlyingBird < Bird

	def movement
		'flew by'
	end

end

# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the FlyingBird superclass.
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

# Kiwi.rb | Defines the Kiwi class which inherits attributes 
# and methods from the WalkingBird superclass.
#
# By: Sarah Whitten
# Date: April 20, 2019
####################################################

require './WalkingBird.rb'
require './Bird.rb'

class Kiwi < WalkingBird

	def call
    	'Reeee!'
	end

end

# Ostrich.rb | Defines the Ostrich class which inherits attributes 
# and methods from the WalkingBird superclass.
#
# By: Sarah Whitten
# Date: April 20, 2019
####################################################

require './WalkingBird.rb'
require './Bird.rb'

class Ostrich < WalkingBird

	def call
    	'Snork!'
	end

end

# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the FlyingBird superclass.
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

# Penguin.rb | Defines the Penguin class which inherits attributes 
# and methods from the WalkingBird superclass.
#
# By: Sarah Whitten
# Date: April 20, 2019
####################################################

require './WalkingBird.rb'
require './Bird.rb'

class Penguin < WalkingBird

	def call
    	'Huh-huhh!'
	end

end

# WalkingBird.rb | Defines a WalkingBird subclass 
# to be extended by specific walking-bird sub-classes.
#
# By: Sarah Whitten
# Date: April 20, 2019
####################################################

class WalkingBird < Bird

	def movement
		'walked by'
	end

end

smw42@gold33:~/CS214/projects/10/ruby$ ruby birds.rb

Welcome to the Bird Park!

Hawkeye Bird just went by and said Squawk!
Donald Duck just flew by and said Quack!
Mother Goose just flew by and said Honk!
Woodsey Owl just flew by and said Hoo!
Pingu Penguin just walked by and said Huh-huhh!
Orla Ostrich just walked by and said Snork!
Kellie Kiwi just walked by and said Reeee!

smw42@gold33:~/CS214/projects/10/ruby$ exit

Script done on Sat 20 Apr 2019 08:33:27 PM EDT
