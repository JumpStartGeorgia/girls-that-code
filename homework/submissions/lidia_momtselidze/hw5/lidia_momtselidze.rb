puts "------------------"
puts "----- Step 1 -----"
puts "------------------"
require 'csv'
people = CSV.read("D:/Ruby/girls-that-code/homework/assignments/us-diary.csv", headers:true)

puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

ny_people=people.select{|record| record[4] == 'New York'}
ny_names=ny_people.map{|record| record[0]+' '+record[1]}
puts "Full name of people living in new york is \n #{ny_names}"

puts "------------------"
puts "----- Step 3 -----"
puts "------------------"

gmail_people=people.select{|record| record[10].index('gmail')!=nil}
mapped_gmail_people = gmail_people.map{|record| [(record[0]+' '+record[1]), record[7].to_i]}
sorted_gmail_people=mapped_gmail_people.sort_by {|zip| -zip[1]}
puts "Full name and postal codes of people with gmail accounts are \n #{sorted_gmail_people}"

puts "------------------"
puts "----- Step 4 -----"
puts "------------------"

sorted_gmail_people.each {|x| print x[0], " lives in the ",x[1]," area\n" }