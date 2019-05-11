# Temperature.rb
#
# Created by: Sarah Whitten
# Date: April 20, 2019

module Temperature

	class TemperatureClass

		def initialize(degrees, scale)
			if validTemp(degrees, scale)
				@degrees, @scale = degrees, scale
			else
				puts("Cannot create TemperatureClass!")
			end
		end

		# provide the accessors for degree and scale
		attr_reader :degrees, :scale

		def equals(temp1, temp2)
			return (toKelvin(temp1.degrees, temp1.scale) - toKelvin(temp2.degrees, temp2.scale)).abs <= 0.00001
		end

		def lessthan(temp1, temp2)
			return toKelvin(temp1.degrees, temp1.scale) - toKelvin(temp2.degrees, temp2.scale) <= 0.00001
		end

		def raise(oldTemp, amount)
			return TemperatureClass.new(oldTemp.degrees + amount, oldTemp.scale)
		end

		def lower(oldTemp, amount)
			return TemperatureClass.new(oldTemp.degrees - amount, oldTemp.scale)
		end

		def validTemp(degrees, scale)
			if (toKelvin(degrees, scale) >= 0.0)
				return true
			else
				puts("Invalid temperature!")
				return false
			end
		end

		def toKelvin(degrees, scale)
			if scale == 'F'
				return (degrees + 459.67) * (5.0 / 9.0)
			end
			if scale == 'C'
				return degrees + 273.15
			end
			if scale == 'K'
				return degrees
			end
		end

		def toCelsius(degrees, scale)
			if scale == 'F'
				return (degrees - 32.0) * (5.0 / 9.0)
			end
			if scale == 'C'
				return degrees
			end
			if scale == 'K'
				return degrees - 273.15
			end
		end

		def toFahrenheit(degrees, scale)
			if scale == 'F'
				return degrees
			end
			if scale == 'C'
				return degrees * (9.0 / 5.0) + 32.0
			end
			if scale == 'K'
				return degrees * (9.0 / 5.0) - 459.67
			end
		end

		# prints a line containing the value of the temperature in each scale
		def print
			puts "F: " + toFahrenheit(@degrees, @scale).to_s + "  C: " + toCelsius(@degrees, @scale).to_s + " K: " + toKelvin(@degrees, @scale).to_s
		end

		def input
			puts "Enter the temperature with the scale: "
			# get the input string
			inputString = gets.chomp
			# case statement to decide whether it is valid or not
			case
			# when the regex decides it matches the desired formatting
			when inputString.match(/\d+ [FCK]/)
				if validTemp(inputString.match(/\d+/).to_s.to_f, inputString.match(/[FCK]/).to_s)
					# modify the values to be the inputted values
					@degrees = inputString.match(/\d+/).to_s.to_f
					@scale = inputString.match(/[FCK]/).to_s
				end
			else
				#otherwise print an error message
				puts "Invalid combination!"
			end
		end

	end

end

