#Authors
#Ryan Drake
#Sanjita Shah
require 'pry'
require 'pry-debugger'

def validgroupsize

  puts "The class will be divided into requested group sizes for the lab work"
  puts "Please enter group size"
  size = gets.chomp.to_i
    while size <= 0
      puts "Please enter valid group size"
      size = gets.chomp.to_i
    end
  return size
end

randomlist = "Jack Andrew Sanjita Ryan Nick Steve Hui Will Tarun Dan Mike".split.shuffle
grpsize = validgroupsize

fgrp = []
if randomlist.length > grpsize #class size is greater than group size
  #Split the class into groups of groupsize
  while !randomlist.empty?
    newlist = randomlist.pop grpsize
    fgrp.push newlist
  end

  if fgrp.last.length < grpsize #Merge the last 2 groups if the last groups is smaller then group size
      fgrp[fgrp.length-2] = fgrp[fgrp.length-2..fgrp.length-1].flatten
      fgrp.pop 1
  end

  i = 0
  fgrp.each {|fgrp| puts "Group " "#{i=i+1} " "#{fgrp.join(" ")}"}

else #if group size is greater class size

  puts "Group 1 #{randomlist.join(" ")}"

end