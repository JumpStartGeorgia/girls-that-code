# Class 7 Notes
#
# Topics: Manipulating array
# - how to re-organize the arrays, to select specific information from them.

# The Array API
# http://ruby-doc.org/core-2.1.3/Array.html

#############################
# We'll learn to day how to get and/or process 
# information from an array. We'll do this from the CSV file
# used during the previous class (class #6)
#############################

puts ""
puts "#############################"
puts "ARRAY#MAP METHOD"
puts "#############################"
puts ""

# Before we get onto reading the file, let's learn about the map method, for the Array class.

# The map method iterates over each element of an array, then performs an operation on each of them
# For example, let's consider the following array of names.

names = ['Nino','Tamar','Mariam','Maka']

# Use the map method to change the value of each element of this array, and assign the modified array to the variable 'programmer_names'.
programmer_names = names.map {|name| "#{name} is a programmer"}
puts programmer_names

# Let's try this with numbers. Consider the following array
ages = [26,11,34,79,58]
puts ages

# Increase each age by 12 years. This time, use the same variable, 'ages', to store the modified ages
ages.map!{|age| age + 12}
puts ages

puts ""
puts "#############################"
puts "ARRAY#SORT METHOD"
puts "#############################"
puts ""

# As its name suggests, the 'sort' method for the Array class sorts the element of an array.
# Let's use it on the 'ages' array created on the previous exercise.

sorted_ages = ages.sort
puts sorted_ages

# It is also possible to sort in a descending order. Therefore, the 'sort' method takes 2 parameters.
desc_sorted_ages = ages.sort {|x,y| y <=> x}
puts desc_sorted_ages

puts ""
puts "#############################"
puts "READ THE CSV FILE"
puts "#############################"
puts ""

# As a prequisite to this exercise, make sure you copy 'makler_november.csv' into your current testing folder (where your class7.rb script is)
# In order to read makler_november.csv, as introduced on class 6, we first need to tell Ruby to use the csv library.
require 'csv'

# While reading the CSV file, remember we need to indicate that there's a line of headers to consider.
records = CSV.read('makler_november.csv', headers: true)

# Remember that what we have (variable 'records' is an array of arrays).

# Let's now play with our CSV files, and the sort and map methods.

# Using the map and uniq method, let's find out all the area district present on this CSV file.
districts = records.map{|record| record[20]}
puts districts

# Data needs to be cleaned, we don't need that many repetition of a district name. Let's use the uniq method.
unique_districts = districts.uniq
puts unique_districts

puts "#############################"

# Let's now look for the most spacious place
# We'll use the data that's on the 10th column (index 9), and we will use the 'sort_by' method, which takes 1 parameter.
space_array = records.sort_by {|apt| -apt[9]}
# The minus here tells that we're ordering by descending order. By doing so, we'll take the first element of the result, which will have the 
# greatest number, at index 9.
puts "The most spacious place is on posting '#{space_array[0][0]}'. The place has  #{space_array[0][9]} square meters"

puts "#############################"

# TIPS: In a spreadsheet, using the 'select' method, you consider data horizontally. With 'map' method, you consider data vertically.

# Using the select, map and sort_by methods, we are going to find out what apartment for sale is the cheapest. We'll need to know only its posting id
# 1) We first need to select all the records that match the description "Apartment" and "On Sale".
apt_for_sale = records.select{|record| record[1] == 'for sale' && record[2] == 'apartment'}

# 2) From that selected dataset, the only information we need is the posting id and the price. Let's get only these 2 types of information
mapped_apts = apt_for_sale.map{|record| [record[0], record[7].to_i]

# 3) We now need to sort the mapped apartement by price. We won't use the 'sort' method here, we'll use 'sort_by' because we need to specify which column we
# want to get our dataset sorted by.
sorted_mapped_apts = mapped_apts.sort_by {|apt| apt[1]}

# 4) Finally we display on the screen the posting number of the cheapest apartment for sale
puts "The cheapest apartment for sale is on posting '#{sorted_mapped_apts[0][0]}'"
# The cheapest apartment for sale is on posting '969583'

# Among the 4 steps above, which one was not necessary? 

puts "#############################"

# Among the places in Old Tbilisi that have "Heating system", which is the one that has the most bedrooms? 
apts_old_tbilisi = records.select{|record| (record[4] != nil) && (record[4].include?'Heating system') && (record[19] == 'Old Tbilisi')}

apts_old_tbilisi.sort_by! {|apt| -apt[25]}

puts "The place with heated system, and which has the most bedroom, in Old Tbilisi, can be found on posting '#{apts_old_tbilisi[0][0]}'"



