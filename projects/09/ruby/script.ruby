Script started on Wed 17 Apr 2019 02:22:03 PM EDT
smw42@maroon28:~/CS214/projects/09/ruby$ cat List.rb max.rb
# List.rb implements a linked list structure in Ruby.
#
# Completed by: Sarah Whitten
# Date: April 16, 2019
#######################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

class List

   # initialize a List to be empty
   # Postcondition: first == nil and last == nil and length == 0

   def initialize
      @first = nil
      @last = nil
      @length = 0
   end

   attr_reader :length

   # Am I empty?
   # Return: length == 0
   def empty?
      @length == 0
   end
  
   # append a value to me
   # Receive: value, the item to be appended
   # Postcondition: my last item is value and
   #                 my length is one more than it was
   def append(value)
      newNode = Node.new(value, nil)

      if empty?
         @first = newNode
      else
         @last.next = newNode      
      end

      @last = newNode
      @length += 1
      self
   end


   # print my items
   # Postcondition: my items have been displayed to the screen

   def print
      temp = @first
      while !temp.nil?
         printf " #{temp.value}"
         temp = temp.next
      end 
   end

   # find my maximum item
   # Return: my maximum item

   def max
      temp = @first
      maxValue = -99999
      while !temp.nil?
         if temp.value > maxValue
            maxValue = temp.value
         end
         temp = temp.next
      end
      return maxValue
   end

   # find the index of an element
   # Return: the index of an element

   def Search(value)
      temp = @first
      returnVal = -1
      index = 0
      while !temp.nil?
         if temp.value == value
            returnVal = index
         end
         temp = temp.next
         index = index + 1
      end
      return returnVal
   end

   class Node
      def initialize(item, link)
         @value = item
         @next = link
      end
   
      attr_reader :value
      attr_accessor :next
   end

end

# max.rb tests a Ruby linked list.
#
# Completed by: Sarah Whitten
# Date: April 16, 2019

require './List'

list1 = List.new
list2 = List.new
list3 = List.new
list4 = List.new

list1.append(99).append(88).append(77).append(66).append(55)
list2.append(55).append(66).append(77).append(88).append(99)
list3.append(55).append(77).append(99).append(88).append(66)
list4.append(55).append(77).append(22).append(88).append(66)

list1.print 
puts
puts "Maximum of list1: #{list1.max}"

list2.print 
puts
puts "Maximum of list2: #{list2.max}"

list3.print 
puts
puts "Maximum of list3: #{list3.max}"

puts
puts "Index of 99 in list1: #{list1.Search(99)}"

puts
puts "Index of 99 in list2: #{list2.Search(99)}"

puts
puts "Index of 99 in list3: #{list3.Search(99)}"

puts
puts "Index of 99 in list4: #{list4.Search(99)}"

smw42@maroon28:~/CS214/projects/09/ruby$ ruby max.rb
 99 88 77 66 55
Maximum of list1: 99
 55 66 77 88 99
Maximum of list2: 99
 55 77 99 88 66
Maximum of list3: 99

Index of 99 in list1: 0

Index of 99 in list2: 4

Index of 99 in list3: 2

Index of 99 in list4: -1
smw42@maroon28:~/CS214/projects/09/ruby$ exit

Script done on Wed 17 Apr 2019 02:22:22 PM EDT
