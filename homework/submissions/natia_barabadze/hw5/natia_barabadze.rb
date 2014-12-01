# homework 5

puts "------------------"
puts "----- Step 1 -----"
puts "------------------"

# 1. First things first: let's load the US diary CSV file.
# - you will find us-diary.csv, in the notes folder. Make sure you copy it in the same folder where this Ruby file (the one you're reading right now!) is.
# - don't forget to import the 'csv' Ruby library
# - the us-diary has a line of headers. Make sure to take this into consideration, when you read the file.
# - store the content of the file in a variable called 'people'

require 'csv'

people = CSV.read('us-diary.csv', headers: true)
puts "load US diary CSV file."


puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

# 2. We are going to display the full names of the people living in New York City
# - First, create a variable called 'ny_people', which gathers all the people living in New York city.
# - From this newly created variable, get only the first name and the last name of these people, into a new variable called 'ny_names'. Use the 'map' method to do so.
#   IMPORTANT: each element of the 'ny_names' array with be a full name. Make you take this into consideration, when using your 'map' method.
# - Display the content of your 'ny_names' variable on the screen.

ny_people = people.select {|row| row[4] == 'New York'}

ny_names = ny_people.map {|row| [row[0] + " " + row[1] ]}

puts ny_names



puts "------------------"
puts "----- Step 3 -----"
puts "------------------"

# 3. Display the full name and the postal code of those who own a GMail address. The postal code will be sorted in a descending order
# - First, create a variable called 'gmail_people', which gathers all the people owning a GMail address.
# - Then, choose only the full names, and the postal codes, as we don't need the other information. Use the 'map' method to do so. Store this information in a variable called 'mapped_gmail_people'
# - Sort the selected information by postal code, using the 'sort_by' method. Remember that we need the information sorted in a descending order. Store this information in a varaible called 'sorted_gmail_people'
# - Display the content of the sorting on the screen.

gmail_people = people.select {|row| row[10].include?'gmail.com' }

mapped_gmail_people = gmail_people.map{|row| [(row[0] + ' ' + row[1]), row[7].to_i]}

sorted_gmail_people = mapped_gmail_people.sort_by {|row| row[1]}

puts sorted_gmail_people




puts "------------------"
puts "----- BONUS  -----"
puts "------------------"


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


####sorted_gmail_people.each do {{|row| row[0]} lives in the {|row| row[1]} area.}


########################
## Feedback from Jason
## - In general, when you are creating a new string, what you are doing works, but you can also do the following:
##   ny_names=ny_people.map{|i| "#{i[0]} #{i[1]}" } - may be easier to read
## #2 - when you are creating ny_names, you do not need to put the full name into a new array:
##      - you have:    ny_names = ny_people.map {|row| [row[0] + " " + row[1] ]}
##      - alternative: ny_names = ny_people.map {|row| row[0] + " " + row[1] }
## #3 - the directions asked to have the gmail people sorted in descending order. What you have is ascending.
##      - by converting the zip code to a number in mapped_gmail_people, you are losing the starting '0' for zip codes that start with '0'. This could give you unintended results.
## #4 - you were very close: 
##      sorted_gmail_people.each do {|person| puts "#{person[0]} lives in the #{person[1]} area"}
## good job!
