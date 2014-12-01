# Homework Assignment #5
# Searching for data in arrays:

# - if you need help with arrays, try here: http://www.ruby-doc.org/core-2.1.3/Array.html
# - if you need help with loading the csv, try here: http://ruby-doc.org/stdlib-2.1.3/libdoc/csv/rdoc/CSV.html


puts "------------------"
puts "----- Step 1 -----"
puts "------------------"

require 'csv'
people=CSV.read('us-diary.csv', headers: true)
puts 'imported file:'
puts people


puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

ny_people=people.select{|i| i[5] == 'New York' }
ny_names=ny_people.map{|i| i[0]+' '+i[1]}
puts ny_names


puts "------------------"
puts "----- Step 3 -----"
puts "------------------"

gmail_people=people.select {|i| i[10].include?("gmail.com")}
mapped_gmail_people=gmail_people.map{|i|[i[0]+' '+i[1] ,i[7].to_i]}
sorted_gmail_people=mapped_gmail_people.sort_by{|i| i[1].to_i}.reverse
puts sorted_gmail_people

puts "------------------"
puts "----- Step 4 -----"
puts "------------------"

sorted_gmail_people.each {|i| print i[0]," lives in ", i[1]," area\n"}
