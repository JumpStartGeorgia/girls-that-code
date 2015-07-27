puts ""
puts "Homework 5"

puts ""
puts "----- Step 1 -----"
puts ""

require 'csv'

people = CSV.read('us-diary.csv', headers: true)

puts "There are #{people.length} peoples names in the US-diary-file."

puts ""

ny_people = people.select {|record| record[4] == 'New York'}

puts "There are #{ny_people.length} people living in NYC."

puts ""

ny_names = ny_people.map {|record| record[0] +' '+record[1]}


puts "The people living in New York City are"

puts ny_names

puts ""

gmail_people = people.select {|record| (record[10] !=nil) && (record[10].include?'gmail')}
puts gmail_people

mapped_gmail_people = gmail_people.map{|record| [(record[0]+' '+record[1]), record[7].to_i]}
sorted_gmail_people = mapped_gmail_people.sort_by {|area| -(area[1])}

puts "Full name and postal codes of people with gmail accounts are"

puts sorted_gmail_people

puts ""
puts " BONUS"
puts ""

sorted_gmail_people.each {|record| print record[0], " lives in the ",record[1]," area\n" }

#####################################
## feedback from jason:
## good job!