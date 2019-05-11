#! /usr/bin/ruby
# logTable.rb displays a table of logarithms
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Sarah Whitten
#
# Input:  The start, stop and increment values
# Precondition: The start value is less than the stop value, 
#     and the increment is greater than 0
# Output: A table of logarithms from start to stop, with increment
#     as the step value


if __FILE__ == $0
    print "Enter the start value: "
    start = gets;
    print "Enter the stop value: "
    stop = gets;
    print "Enter the increment value: "
    step = gets; 
    num = start.to_i;  
   
    while num <= stop.to_i do
        puts "The logarithm of #{ num } is #{ Math.log10(num.to_i) }"
        num += step.to_i
    end
end

