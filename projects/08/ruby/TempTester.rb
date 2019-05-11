# testTemp.rb tests the module Temperature.rb
#
# Created by: Sarah Whitten
# Date: April 20, 2019

require './Temperature.rb'

def testTemp
	# create the baseTemp and limitTemp with "default" values
   baseTemp = Temperature::TemperatureClass.new(0, 'K')
   limitTemp = Temperature::TemperatureClass.new(0, 'K')
   # ask the user for input and change the temperatures accordingly
   puts "Base temperature:"
   baseTemp.input
   puts "Limit temperature:"
   limitTemp.input
   # get the increment value
   puts "Increment value:"
   stepValue = gets.to_f
   # while the baseTemp is less than or equal to the limitTemp (regardless of scale)
   # continues looping, printing the temperature and incrementing it
   while (baseTemp.lessthan(baseTemp, limitTemp) or baseTemp.equals(baseTemp, limitTemp))
      baseTemp.print
      baseTemp = baseTemp.raise(baseTemp, stepValue)
   end
end

testTemp

