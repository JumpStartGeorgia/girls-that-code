# homework 6

puts "------------------"
puts "----- Step 1 -----"
puts "------------------"

# 1. First things first: let's load the makler CSV file.
# - you will find makler_november.csv, in the notes folder. Make sure you copy it in the same folder where this Ruby file (the one you're reading right now!) is.
# - don't forget to import the 'csv' Ruby library
# - the makler_november has a line of headers. Make sure to take this into consideration, when you read the file.
# - store the content of the file in a variable called 'posts'

require 'csv'
posts = CSV.read('makler_november.csv', headers: true)


puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

# 2. 
# Create a variable called 'posts_garages' that only contains posts with garages.

posts_garages = posts.select {|record| record[39] !=nil?}
puts "#{posts_garages.length} posts with garages in this file"

puts "------------------"
puts "----- Step 3 -----"
puts "------------------"

# 3. 
# For each of the posts in 'posts_garages', write to the screen the posting_id and the number of bedrooms
# if the post is an apartment. If it is not an apartment, write to the screen the posting_id and the phrase 'Does not meet requirements.'
# Ex. "ID: 10016461, # Garages: 3 " or "ID: 10016461, Does not meet requirements."

posts_garages.each do |record|

  if record[2] == 'apartment' && record[25] != nil?
  puts "#{record[0]} has #{record[25]} bedrooms."
  
  end
  
  if record[2] != 'apartment'
  puts "#{record[0]} does not meet requirements."
  
  end
  
  
end


puts "------------------"
puts "----- BONUS  -----"
puts "------------------"

# 4 BONUS QUESTION
# You are a very superstitious person and are only looking for apartments with 'posting_id's that end
# with the number '3'. Create a subset of 'posts' that have a garage, at 3 bedrooms, is an apartment,
# and the last digit of the 'posting id' is the number '3'. Assign that subset to the variable 'posts_three'.
# For each post in that list, write to the screen the 'posting_id' and the number of apartments if and only if
# the apartment is located in Tbilisi. Do that in a pretty way.


###write to the screen the 'posting_id' and the number of apartments
## apartments or bedrooms?

posts_three = posts_garages.select {|record| record[0][-1] == '3' && record[39] != nil? && record[25].to_i == '3' && record[2] == 'apartment' }

posts_three.each do |record|

  if record[18] == 'Tbilisi'
    puts "#{record[0]} has #{record[25]} bedrooms".

  end
end