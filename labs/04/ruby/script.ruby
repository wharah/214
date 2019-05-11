Script started on Sat 23 Feb 2019 06:57:24 PM EST
smw42@gold34:~/CS214/labs/04$ cat logTable.rb
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

smw42@gold34:~/CS214/labs/04$ ruby logTable.rb
Enter the start value: 1
Enter the stop value: 10
Enter the increment value: 1
The logarithm of 1 is 0.0
The logarithm of 2 is 0.3010299956639812
The logarithm of 3 is 0.47712125471966244
The logarithm of 4 is 0.6020599913279624
The logarithm of 5 is 0.6989700043360189
The logarithm of 6 is 0.7781512503836436
The logarithm of 7 is 0.8450980400142568
The logarithm of 8 is 0.9030899869919435
The logarithm of 9 is 0.9542425094393249
The logarithm of 10 is 1.0
smw42@gold34:~/CS214/labs/04$ exit

Script done on Sat 23 Feb 2019 06:57:53 PM EST
