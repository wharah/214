Script started on Thu May  2 16:44:10 2019
bash-3.2$ cat Temperature.rb
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

bash-3.2$ cat TempTester.rb
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

bash-3.2$ ruby Temperature.rb
bash-3.2$ ruby TempTester.rb
Base temperature:
Enter the temperature with the scale: 
0 K
Limit temperature:
Enter the temperature with the scale: 
212 F
Increment value:
20
F: -459.67  C: -273.15 K: 0.0
F: -423.67  C: -253.14999999999998 K: 20.0
F: -387.67  C: -233.14999999999998 K: 40.0
F: -351.67  C: -213.14999999999998 K: 60.0
F: -315.67  C: -193.14999999999998 K: 80.0
F: -279.67  C: -173.14999999999998 K: 100.0
F: -243.67000000000002  C: -153.14999999999998 K: 120.0
F: -207.67000000000002  C: -133.14999999999998 K: 140.0
F: -171.67000000000002  C: -113.14999999999998 K: 160.0
F: -135.67000000000002  C: -93.14999999999998 K: 180.0
F: -99.67000000000002  C: -73.14999999999998 K: 200.0
F: -63.670000000000016  C: -53.14999999999998 K: 220.0
F: -27.670000000000016  C: -33.14999999999998 K: 240.0
F: 8.329999999999984  C: -13.149999999999977 K: 260.0
F: 44.329999999999984  C: 6.850000000000023 K: 280.0
F: 80.32999999999998  C: 26.850000000000023 K: 300.0
F: 116.32999999999998  C: 46.85000000000002 K: 320.0
F: 152.32999999999998  C: 66.85000000000002 K: 340.0
F: 188.32999999999998  C: 86.85000000000002 K: 360.0
bash-3.2$ ruby TempTester.rb
Base temperature:
Enter the temperature with the scale: 
0 F
Limit temperature:
Enter the temperature with the scale: 
100 C
Increment value:
2.5
F: 0.0  C: -17.77777777777778 K: 255.37222222222223
F: 2.5  C: -16.38888888888889 K: 256.7611111111111
F: 5.0  C: -15.0 K: 258.15000000000003
F: 7.5  C: -13.611111111111112 K: 259.5388888888889
F: 10.0  C: -12.222222222222223 K: 260.9277777777778
F: 12.5  C: -10.833333333333334 K: 262.31666666666666
F: 15.0  C: -9.444444444444445 K: 263.7055555555556
F: 17.5  C: -8.055555555555555 K: 265.0944444444445
F: 20.0  C: -6.666666666666667 K: 266.48333333333335
F: 22.5  C: -5.277777777777778 K: 267.87222222222226
F: 25.0  C: -3.8888888888888893 K: 269.2611111111111
F: 27.5  C: -2.5 K: 270.65000000000003
F: 30.0  C: -1.1111111111111112 K: 272.0388888888889
F: 32.5  C: 0.2777777777777778 K: 273.4277777777778
F: 35.0  C: 1.6666666666666667 K: 274.81666666666666
F: 37.5  C: 3.055555555555556 K: 276.2055555555556
F: 40.0  C: 4.444444444444445 K: 277.5944444444445
F: 42.5  C: 5.833333333333334 K: 278.98333333333335
F: 45.0  C: 7.222222222222222 K: 280.37222222222226
F: 47.5  C: 8.61111111111111 K: 281.7611111111111
F: 50.0  C: 10.0 K: 283.15000000000003
F: 52.5  C: 11.38888888888889 K: 284.53888888888895
F: 55.0  C: 12.777777777777779 K: 285.9277777777778
F: 57.5  C: 14.166666666666668 K: 287.3166666666667
F: 60.0  C: 15.555555555555557 K: 288.70555555555563
F: 62.5  C: 16.944444444444446 K: 290.0944444444445
F: 65.0  C: 18.333333333333336 K: 291.4833333333334
F: 67.5  C: 19.72222222222222 K: 292.87222222222226
F: 70.0  C: 21.11111111111111 K: 294.2611111111112
F: 72.5  C: 22.5 K: 295.65000000000003
F: 75.0  C: 23.88888888888889 K: 297.03888888888895
F: 77.5  C: 25.27777777777778 K: 298.4277777777778
F: 80.0  C: 26.666666666666668 K: 299.8166666666667
F: 82.5  C: 28.055555555555557 K: 301.20555555555563
F: 85.0  C: 29.444444444444446 K: 302.5944444444445
F: 87.5  C: 30.833333333333336 K: 303.9833333333334
F: 90.0  C: 32.22222222222222 K: 305.37222222222226
F: 92.5  C: 33.611111111111114 K: 306.7611111111112
F: 95.0  C: 35.0 K: 308.15000000000003
F: 97.5  C: 36.38888888888889 K: 309.53888888888895
F: 100.0  C: 37.77777777777778 K: 310.9277777777778
F: 102.5  C: 39.16666666666667 K: 312.3166666666667
F: 105.0  C: 40.55555555555556 K: 313.70555555555563
F: 107.5  C: 41.94444444444444 K: 315.0944444444445
F: 110.0  C: 43.333333333333336 K: 316.4833333333334
F: 112.5  C: 44.72222222222222 K: 317.87222222222226
F: 115.0  C: 46.111111111111114 K: 319.2611111111112
F: 117.5  C: 47.5 K: 320.65000000000003
F: 120.0  C: 48.88888888888889 K: 322.03888888888895
F: 122.5  C: 50.27777777777778 K: 323.4277777777778
F: 125.0  C: 51.66666666666667 K: 324.8166666666667
F: 127.5  C: 53.05555555555556 K: 326.20555555555563
F: 130.0  C: 54.44444444444445 K: 327.5944444444445
F: 132.5  C: 55.833333333333336 K: 328.9833333333334
F: 135.0  C: 57.22222222222222 K: 330.37222222222226
F: 137.5  C: 58.611111111111114 K: 331.7611111111112
F: 140.0  C: 60.0 K: 333.15000000000003
F: 142.5  C: 61.38888888888889 K: 334.53888888888895
F: 145.0  C: 62.77777777777778 K: 335.9277777777778
F: 147.5  C: 64.16666666666667 K: 337.3166666666667
F: 150.0  C: 65.55555555555556 K: 338.70555555555563
F: 152.5  C: 66.94444444444444 K: 340.0944444444445
F: 155.0  C: 68.33333333333334 K: 341.4833333333334
F: 157.5  C: 69.72222222222223 K: 342.87222222222226
F: 160.0  C: 71.11111111111111 K: 344.2611111111112
F: 162.5  C: 72.5 K: 345.65000000000003
F: 165.0  C: 73.88888888888889 K: 347.03888888888895
F: 167.5  C: 75.27777777777779 K: 348.4277777777778
F: 170.0  C: 76.66666666666667 K: 349.8166666666667
F: 172.5  C: 78.05555555555556 K: 351.20555555555563
F: 175.0  C: 79.44444444444444 K: 352.5944444444445
F: 177.5  C: 80.83333333333334 K: 353.9833333333334
F: 180.0  C: 82.22222222222223 K: 355.37222222222226
F: 182.5  C: 83.61111111111111 K: 356.7611111111112
F: 185.0  C: 85.0 K: 358.15000000000003
F: 187.5  C: 86.38888888888889 K: 359.53888888888895
F: 190.0  C: 87.77777777777779 K: 360.92777777777786
F: 192.5  C: 89.16666666666667 K: 362.3166666666667
F: 195.0  C: 90.55555555555556 K: 363.70555555555563
F: 197.5  C: 91.94444444444444 K: 365.0944444444445
F: 200.0  C: 93.33333333333334 K: 366.4833333333334
F: 202.5  C: 94.72222222222223 K: 367.87222222222226
F: 205.0  C: 96.11111111111111 K: 369.2611111111112
F: 207.5  C: 97.5 K: 370.65000000000003
F: 210.0  C: 98.8888888888889 K: 372.03888888888895
bash-3.2$ exit

Script done on Thu May  2 16:45:16 2019
