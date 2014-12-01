# Homework Assignment #5
# Searching for data in arrays:
# 
# We'll keep analyzing some data in arrays, this time we'll use a new CSV file: the US diary (us-diary.csv), 
# which lists details of about 500 people living in USA.
# I strongly suggest you refer to the notes from class 7 (notes/class7.rb) for help on using the CSV file and doing searches.


# - if you need help with arrays, try here: http://www.ruby-doc.org/core-2.1.3/Array.html
# - if you need help with loading the csv, try here: http://ruby-doc.org/stdlib-2.1.3/libdoc/csv/rdoc/CSV.html

##################
#### IMPORTANT: after each step, use a puts statement to write out the variable(s) that you just created, like:
#### puts "new_poem = #{new_poem}"
#### 
#### It will also be good to use a puts statement as a separator between each step, like:
#### puts "------------------"
#### puts "----- Step 3 -----"
#### puts "------------------"
####
#### These are not required, but it does help make it easier to look at your output and know what your are looking at.
##################


###
# 1. First things first: let's load the US diary CSV file.
# - you will find us-diary.csv, in the notes folder. Make sure you copy it in the same folder where this Ruby file (the one you're reading right now!) is.
# - don't forget to import the 'csv' Ruby library
# - the us-diary has a line of headers. Make sure to take this into consideration, when you read the file.
# - store the content of the file in a variable called 'people'

puts "------------------"
puts "--- step 1 ---"
puts "------------------"

require 'csv'

people = CSV.read('../../../../notes/us-diary.csv', headers:true)
puts "there are #{people.length} people"


# 2. We are going to display the full names of the people living in New York City
# - First, create a variable called 'ny_people', which gathers all the people living in New York city.
# - From this newly created variable, get only the first name and the last name of these people, into a new variable called 'ny_names'. Use the 'map' method to do so.
#   IMPORTANT: each element of the 'ny_names' array with be a full name. Make you take this into consideration, when using your 'map' method.
# - Display the content of your 'ny_names' variable on the screen.

puts "------------------"
puts "--- step 2 ---"
puts "------------------"
my_people = people.select{|x| x[4] == 'New York'}
puts "there are #{my_people.length} people in NYC"
my_names = my_people.map{|x| "#{x[0]} #{x[1]}"}
puts "here are their names: #{my_names.join(', ')}"

# 3. Display the full name and the postal code of those who own a GMail address. The postal code will be sorted in a descending order
# - First, create a variable called 'gmail_people', which gathers all the people owning a GMail address.
# - Then, choose only the full names, and the postal codes, as we don't need the other information. Use the 'map' method to do so. Store this information in a variable called 'mapped_gmail_people'
# - Sort the selected information by postal code, using the 'sort_by' method. Remember that we need the information sorted in a descending order. Store this information in a varaible called 'sorted_gmail_people'
# - Display the content of the sorting on the screen.

puts "------------------"
puts "--- step 3 ---"
puts "------------------"
gmail_people = people.select{|x| x[10].include?('gmail.com')}
puts "there are #{gmail_people.length} people with a gmail email address"
mapped_gmail_people = gmail_people.map{|x| ["#{x[0]} #{x[1]}", x[7]]}
sorted_gmail_people = mapped_gmail_people.sort_by{|x| -x[1].to_i}
puts "here are these people sorted by postal code: #{sorted_gmail_people}"


# 4 BONUS QUESTION
#
# Try to display nicely the information contained in 'sorted_gmail_people' variable, using an 'each' loop (Array.each)
# You can learn about the each method here:
# http://www.ruby-doc.org/core-2.1.3/Array.html#method-i-each
# http://www.tutorialspoint.com/ruby/ruby_iterators.htm
#
# For each element of 'sorted_gmail_people', display on the screen:
# "<first_name> <last_name> lives in the <postal_code> area"
#
# Make sure you replace <first_name> <last_name> and <postal_code> by the appropriate information.
puts "------------------"
puts "--- bonus ---"
puts "------------------"
sorted_gmail_people.each do |person|
  puts "#{person[0]} lives in the #{person[1]} area"
end



