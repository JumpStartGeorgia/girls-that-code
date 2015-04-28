puts ""
puts "Hw6"

puts ""
puts "----- Step 1 -----"
puts ""

require 'csv'

posts = CSV.read('makler_november.csv', headers: true)

puts "There are #{posts.length} items in the file."

puts ""

posts_garages = posts.select{|x| x[39]!=nil}

puts "There are #{posts_garages.length} posts with garages in Makles_november."


posts_garages.each do |record|
	if record[2] == 'apartment' && !record[25].nil?
		puts "#{record[0]} has #{record[25]} bedrooms."
	end

	if record[2] !='apartment'
		puts "#{record[0]}, does not meet requirements."
	end

end
puts ""
puts "------------------"
puts "------------------"
puts "BONUS"
puts "------------------"
puts "------------------"

posts_three = posts_garages.select{|record| record[0][-1] == '3' && record[25].to_i == 3 && record[2] == 'apartment'}

puts""


posts_three.each do |record|
	if record[18] == 'Tbilisi'
		puts "The apartment with posting-id #{record[0]} has #{record[25]} bedrooms and is located in Tbilisi.\n"
	end
end

puts""



