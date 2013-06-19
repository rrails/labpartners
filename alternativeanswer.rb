#Authors: Sanjita and Ryan
#Date: Tuesday 19 June 2013
#Project Name: Randomised Class Groups
#Web Development Immersive Winter '13

require 'pry'
require 'pry-debugger'

#This lists the number of students in WDI Sydney Winter '13 Class and then randomises a selection
wdisyd =  'Ryan Sanjita Andrew Jack Nick Tarun Hui Stephen Dan Will Mike'.split.shuffle

def menu
  puts "How many students would you like in each group?"
  puts "Please enter a numerical value below:"
  gets.to_i
end

ans = menu()

#Defines operating parameters of a valid input
while ans > wdisyd.length || ans<= 0
  print "You have entered a number which is beyond the number of students in our class. Please select a value between 1 and 11."
  ans = menu()
end

emptyarray = []

#Takes members from WDI Sydney class and splits them into new randomised groups
while wdisyd.length >= ans
  oldarray = wdisyd.pop ans
  emptyarray << oldarray
end

emptyarray[-1] = (emptyarray[-1] + oldarray)

#The remaining numbers left over from initial randomisation are added to the final group
puts "Based on your input, the following groups have been randomly generated. Feel free to go and mingle with your other group members!"
x = 1
emptyarray.each do |y|
  print " #{x}: "
  x += 1
  puts "#{y.join ', '}"
end
