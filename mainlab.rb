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

def validgroupsize
puts "Please enter group size"
grpsize = gets.chomp.to_i

  while grpsize <= 0
    puts "Please enter valid group size"
    grpsize = gets.chomp.to_i
  end
return grpsize
end

def calculategroups
  classsize = 11
  groupsize = validgroupsize
  neq_groups = classsize / groupsize
  remainder = classsize % groupsize
  lastgroup = 0
  if remainder != 0
      lastgroup = groupsize+remainder
      neq_groups = neq_groups - 1
  end
  return lastgroup,neq_groups,groupsize
end

lastgrp, neq, grpsize = calculategroups
studlist = listofstudents
finalgroup = []
while neq > 0
  newlist = studlist.pop grpsize
  neq = neq - 1
  finalgroup.push newlist
end
newlist = studlist.pop lastgrp
finalgroup.push newlist
puts "#{finalgroup}"
finalgroup.join
puts "#{finalgroup.join(" ")}"


