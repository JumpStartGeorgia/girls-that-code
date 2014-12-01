# Class 8 Notes
#
# Topics: Loops
# How to loop through your data and perform actions on it.
# Introducing decision making in your code.

# The Array API
# http://ruby-doc.org/core-2.1.3/Array.html

#############################
# We'll learn to day how to get and/or process 
# information from an array. We'll do this from the CSV file
# used during the previous class (us-diary.csv)
#############################

#############################
# 1. The 'each' method goes through each element of an array
#     and allows you to do anything you want to that element.
#    The element can also be another array. Let's load our data 
#    so we can do stuff.

require 'csv'

file = File.open('us-diary.csv', 'r').read
data = CSV.parse(file, headers: true)

data.each do |element|

  # let's do some stuff to this element
  # print to screen a sentence like:
  # "Hello, Eric! Did you know your full name has 11 letters in it?"
  # Calculate the average length of the last names in the dataset
  # and write it to the screen in a nice way.
  #
end

data.each do |element|
  puts "Hello, #{element[0]}! Did you know your fullname has #{element[0].length + element[1].length } in it?"
end

names = 0 # initialize
data.each do |element|
  names += element[1].length
end
puts "The average length of all the last names in the dataset is #{(names.to_f / data.length).round(2)}."

#############################
# 2. Decisions, decisions ...
# Use an 'if' statement to do make your code behave a specific way if a certain criteria is met.
# Now we are going to use the makler dataset.

# operators
#==
#!=
#5 > 3
#3 < 5
#5 >= 3
#3 <= 5
#x.nil?

file2 = File.open('makler_november.csv', 'r').read
data2 = CSV.parse(file2, headers: true)


prices = []

data2.each do |element|
  if element[1] == "for sale" && element[2] == "apartment" && !element[4].nil? && element[4].include?("Heating system: central")
     prices << element[8].to_i*element[9].to_i
  end
end

if prices.length % 2 == 0 # even
  puts (prices.sort[prices.length/2] + prices.sort[(prices.length/2) + 1])/2
elsif prices.length % 2 == 1 # odd
  puts prices.sort[prices.length/2 + 1]
else
  "How can something be neither odd or even. That is odd!"
end

puts "first three"
puts prices.sort[0..2]
puts "last three"
puts prices.sort[-3..-1]
