puts "-----------------"
puts "step 1"
puts "loading .csv file"
puts "----------------"
require 'csv'
people = CSV.read('us-diary.csv', headers: true) 
puts "--------------"
puts "step 2"
puts " people living in NY city" 
puts "---------------"
ny_people = people.select{|people| people [4]=='New York'}
ny_names = ny_people.map{|people| [people [0]+ ' ' + people [1]]}
puts "the following people live in New York" 
puts ny_names
puts "----------------"
puts "step 3"
puts "Display the full name and the postal code of those who own a GMail address. The postal code will be sorted in a descending order"
puts "------------------"
gmail_people = people.select {|people| (people [10] !=nil) && (people[10].include?'gmail')}
 puts gmail_people
 mapped_gmail_people = gmail_people.map {|people| [(people [0] + ' ' + people [1]), people [7].to_i]}
sorted_gmail_people = mapped_gmail_people.sort_by {|people| -people [1]}
puts "The following people have gmail accounts: #{sorted_gmail_people}"
puts "------------------------"
puts "BONUS"
puts " Try to display nicely the information contained in 'sorted_gmail_people' variable, using an 'each' loop (Array.each)"
puts "-------------------------"
sorted_gmail_people.each { |people| print people [0], " lives in the ", people [1], " area. \n" } 
