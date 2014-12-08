puts "------------------"
puts "----- Step 1 -----"
puts "------------------"

require 'csv'
posts = CSV.read("D:/Ruby/girls-that-code/homework/assignments/makler_november.csv", headers:true)

puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

posts_garages=posts.select {|record| record[39]!=nil}
puts posts_garages

puts "------------------"
puts "----- Step 3 -----"
puts "------------------"

posts_garages.each do |element|
  if element[2]=='apartment'
    puts "ID: #{element[0]}, # Garages: #{element[25]}\n"
  else
    puts "ID #{element[0]} , Does not meet requirements.\n"
  end
end


puts "------------------"
puts "----- Step 4 -----"
puts "------------------"

posts_three=posts.select {|record| record[2]=='apartment' && record[25].to_i==3 && record[39]!=nil && record[0][-1,1]=='3'}
posts_three.each do |element|
  if element[18]=='Tbilisi'
    puts "apartment with posting id #{element[0]} has #{element[25]} bedrooms\n"
  end
end