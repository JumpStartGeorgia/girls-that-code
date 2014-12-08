puts"-----------------"
puts "creating variable called 'posts' with makler.csv file"
puts "-----------------"
require 'csv'
posts = CSV.read("../../../../notes/makler_november.csv", headers: true)
puts "-----------------"
puts "creating variable posts_garages that contains only posts with garages"
puts "-----------------"
posts_garages = posts.select{ |post| post[39].to_i >= 1 }
puts "-------------------------------"
puts "For each of the posts in 'posts_garages', write to the screen the posting_id and the number of bedrooms if the post is an apartment. If it is not an apartment, write to the screen the posting_id and the phrase 'Does not meet requirements.'"
puts "-------------------------------"
posts_garages.each do |post|
 if post[2] == 'apartment' && post[25].nil? 
 puts "the posting id is #{post[0]} and there are no bedrooms in this property"
 elsif post[2]== 'apartment' && post[25].to_i > 0 
 puts "the posting id is #{post[0]} and there are #{post[25]} bedrooms in this property"
 else
 puts  "the posting id is #{post[0]} and it does not meet requirements."
 end
end
puts ""
puts "-------------------------"
puts "Create a subset of 'posts' that have a garage, at 3 bedrooms, is an apartment,
and the last digit of the 'posting id' is the number '3'. Assign that subset to the variable 'posts_three'.
For each post in that list, write to the screen the 'posting_id' and the number of apartments if and only if
the apartment is located in Tbilisi. Do that in a pretty way"
puts"--------------------------"
puts ""

posts_three = posts_garages.select { |post| post[25].to_i == 3 && post[2] == "apartment" && post[0].split('').last == "3"    }

posts_three.each do 
|post|
if post [18] == 'Tbilisi' 
 puts "the posting_id is #{post[0]} and it has 3 bedrooms"
 end
 end
 
