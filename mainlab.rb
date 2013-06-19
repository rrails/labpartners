#Authors
#Ryan Drake
#Sanjita Shah

require 'pry'
require 'pry-debugger'

def listofstudents()
  studentlist = "Jack Andrew Sanjita Ryan Nick Steve Hui Will Tarun Dan Mike".split
  randomlist = studentlist.shuffle
  return randomlist
end

def calculategroups
  puts "Please enter group size"
  groupsize = gets.chomp.to_i
  number_of_groups = 11 / groupsize
  remainder = 11 % groupsize
  if remainder != 0
    lastgroup = groupsize+remainder
    neq_groups = number_of_groups - 1
    return lastgroup, neq_groups,groupsize
  end
end

lastgrp, neq, grpsize = calculategroups
studlist = listofstudents
finalgroup = []
while neq != 0
  newlist = studlist.pop grpsize
  neq = neq - 1
  finalgroup.push newlist
end
newlist = studlist.pop lastgrp
finalgroup.push newlist
puts "#{finalgroup}"

