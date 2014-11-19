# Class 6 Notes
#
# Topics: Searching Arrays
# - and to play with real data we will also learn how to import CSV files

# The Array API
# http://ruby-doc.org/core-2.1.3/Array.html

#############################
# In order to find something, we need to be able to test whether something is a match.
# So, it is time to introduce you to booleans
#############################

puts ""
puts "#############################"
puts "BOOLEANS WITH MATH"
puts "#############################"
puts ""

# Just like in math class where you had to test if something was equal, less than, greater than, etc, 
# we do the same thing with programming language.
# The result is that we get an answer that is yes or no, or in programming speak: true or false.

# How do we test something:
x = 5
y = 6
z = 5
puts "x = #{x}; y = #{y}; z = #{z}"
# use < to test if x is less than y
puts "x < y = #{x < y}"
# use > to test if x is greater than y
puts "x > y = #{x > y}"
# you can add = to test if >= or <=
puts "x <= z = #{x <= z}"
puts "y >= z = #{y >= z}"

# how to test if something is equals: ==
# - must use 2 = for if you use just one, you will be setting the variable on the left = to the variable on the right
puts "x == y = #{x == y}"
puts "x == z = #{x == z}"
puts "x = y = #{x = y}; x now = #{x}; y now = #{y}"

# reset x
x = 5

# how to test if something is not equal: !=
# in ruby, ! = not
puts "x != y = #{x != y}"
puts "x != z = #{x != z}"

# how to test for more than one thing: && ||
# - && = and - both need to be true in order to return true
#   - x > 3 && y > 3 will result in true
#   - x > 3 && y < 3 will result in false since y < 3 is false 
# - || = or - only one item needs to be true to return true
#   - x > 3 || y > 3 will result in true
#   - x > 3 || y < 3 will result in true
#   - x < 3 || y < 3 will result in false
puts "x > 3 && y > 3 = #{x > 3 && y > 3}"
puts "x > 3 && y < 3 = #{x > 3 && y < 3}"
puts "x > 3 || y > 3 = #{x > 3 || y > 3}"
puts "x > 3 || y < 3 = #{x > 3 || y < 3}"
puts "x < 3 || y < 3 = #{x < 3 || y < 3}"

# you can append as many && or || statements together as you wish

#############################
puts ""
puts "#############################"
puts "BOOLEANS WITH STRINGS AND ARRAYS"
puts "#############################"
puts ""

# other type of tests
# String/Array - index
# - If you do string.index or array.index and nothing is found, nil is returned.
# - You can test for nil using '== nil' or '!= nil' and use the answer to tell you if something is present
str = "This is a sample sentence with UPPER and lower case."
puts "analyzing string = '#{str}'"
puts "The index of 'sample' = #{str.index('sample')}; does str have the word 'sample': #{str.index('sample') != nil}"
puts "The index of 'upper' = #{str.index('upper')}; does str have the word 'upper': #{str.index('upper') != nil}"
puts "Is the letter 'm' located after the 10th position: m index = #{str.index('m')}; is this after the 10th position = #{str.index('m') > 9}"
puts "Does the fourth word start with the letter 's'? This is the fourth word: #{str.split(' ')[3]}. Does it start with 's': #{str.split(' ')[3].start_with?('s')}"

puts ""

names = %w(Nino Mariam Giorgi Ia Irakli)
puts "analyzing array = '#{names}'"
puts "The index of 'Ia' = #{names.index('Ia')}; does names have the word 'Ia': #{names.index('Ia') != nil}"
puts "The index of 'Gio' = #{names.index('Gio')}; does names have the word 'Gio': #{names.index('Gio') != nil}"


#############################

puts ""
puts "#############################"
puts "CSV FILES"
puts "#############################"
puts ""

# A csv file is a spreadsheet. CSV stands for 'comma separated values'
# To better practice using arrays we need a good data set to play with 
# and instead of creating one from scratch, we are going to use
# a CSV file that contains all listings on makler.ge from Noverber 1st-16th.

# Ruby comes with a library to make reading and writing to CSVs pretty painless.
# You can read about this package here: http://ruby-doc.org/stdlib-2.1.3/libdoc/csv/rdoc/CSV.html

# By default, ruby does not start up with the CSV library so you must tell ruby you want to use it
require 'csv'

# We are going to use 'makler_november.csv' that is located in the notes foler for this lesson. 
# I suggest you copy this file into your own test folder so you can follow along.

# To read all contents from the csv into an array
# IMPORTANT - if the ruby file is not in the same folder as the csv file, you have to tell ruby where to find the file
records = CSV.read('makler_november.csv')
puts "With CSV.read, there are #{records.length} records in the CSV file!"

# The length should have come back as 2163. However, is this correct?
# The answer is no because the first row is a header row, not data.
# We can tell ruby that the first row is a header:
records = CSV.read('makler_november.csv', headers: true)
puts "With CSV.read(headers: true), there are #{records.length} records in the CSV file!"

# That's it! 

# Keep in mind that records is an array of rows, and each row is an array
# for example: records = [ [row1 content], [row2 content], etc. ]


puts ""
puts "#############################"
puts "SEARCHING THE CSV FILE"
puts "#############################"
puts ""

# To find records that match a specific requirement, we can use array.select
# The syntax is: matches = records.select{|record| test here}
# - This is basically saying for each record in records, test if something is true and if so, save it to matches
# - matches is an array that we will save the matches to
# - records is our array of records from the CSV file
# - select tells ruby that we want to select items from records
# - |record| is ruby's way of defining a variable that represents a row from the CSV file
#   - remember that this variable is an array
#   - you can call record whatever you want, but it is best to make it meaningful to you
#   - for example: record, item, row, x, dog, misha, etc.
# - test here is where you will write your test (e.g., x[1] == 'for sale')

# so let's get all of the records where type = for sale
# - the type is the 2nd column, so as an array index it is 1
for_sale = records.select{|record| record[1] == 'for sale'}
puts "there are #{for_sale.length} items for sale, out of #{records.length} total records (#{(for_sale.length/records.length.to_f).round(2)*100}%)!"

# now let's find how many apartments are for sale
# - the 3rd column indicates the type of property for sale, so use index of 2
apt_for_sale = records.select{|record| record[1] == 'for sale' && record[2] == 'apartment'}
puts "there are #{apt_for_sale.length} apartments for sale!"


#now let's find how many of these apartments for sale are in old tbilisi
# - we want to use the 'address_area' column, which has an index of 21
#old_tbs_apt_for_sale = records.select{|record| record[1] == 'for sale' && record[2] == 'apartment'  && record[19] == 'Old Tbilisi'}
# we can also write using the above variables
old_tbs_apt_for_sale = apt_for_sale.select{|record| record[19] == 'Old Tbilisi' }
puts "there are #{old_tbs_apt_for_sale.length} apartments for sale in Old Tbilisi!"

# how many of these old tbilisi apartments cost more than $100,000?
# IMPORTANT - the CSV library reads the data in as strings. 
# So we must tell ruby that we want that cost to be treated like a number
# - the sale price is in column 8, so index 7
exp_old_tbs_apt_for_sale = old_tbs_apt_for_sale.select{|record| record[7].to_i > 100000}
puts "there are #{exp_old_tbs_apt_for_sale.length} apartments for sale in Old Tbilisi that cost more than $100,000!"

# how many of these old tbilisi apartments cost are between $300,000 and $400,000?
exp_old_tbs_apt_for_sale = old_tbs_apt_for_sale.select{|record| record[7].to_i > 300000 && record[7].to_i <= 400000}
puts "there are #{exp_old_tbs_apt_for_sale.length} apartments for sale in Old Tbilisi that cost between $300,000 and $400,000!"

# how many of these old tbilisi apartments that cost less than $100,000 have at least 100sqm?
# - the square meters are in the 'space' column which has an index of 9
exp_old_tbs_apt_for_sale = old_tbs_apt_for_sale.select{|record| record[7].to_i < 100000 && record[9].to_i >= 100}
puts "there are #{exp_old_tbs_apt_for_sale.length} apartments for sale in Old Tbilisi that cost less than $100,000 and have at least 100sqm!"
