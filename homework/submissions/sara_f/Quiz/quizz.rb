puts""
puts""
puts""

require 'csv'

data = CSV.read('2015_fuel_efficiency_guide.csv', headers: true)

puts data.length

puts""
puts""
puts""


"What cars are the most fuel efficient?"

#Mapping out the cars with more than 40 EF fuel efficiency

selected_fuel = data.select{|fuel| fuel[9].to_i >=40}.sort_by{|fuel| -fuel[9].to_i}

selected_top_five = selected_fuel[0..4]

mapped_selected_names = selected_top_five.map{|fuel| fuel[1]}.uniq


puts "The manufacturers of the top 5 most fuel efficient cars of 2015 are
#{mapped_selected_names.join(", ")}."

puts""
puts""


#Mapping out the cars with 2-wheel drive


drive_desc = data.select {|drive| drive[28].include?'2-Wheel Drive'}

percent = (drive_desc.length.to_f/data.length.to_f) *100

puts "#{percent.round} % of the cars are two wheel drive."

puts""
puts""

# Identify the cars that have a Hwy FE value which is 10 points higher than the conventional City FE.

hwy_fe = data.select{|fuel| (fuel[10].to_i - fuel[9].to_i) >= 10}


puts "There are #{hwy_fe.length} cars that have a highway FE value which is 10 points or higher than the conventional FE rating."

puts ""


hwy_fe.each do |fuel|
	if fuel[7].to_i > 4 
		puts "The #{fuel[1]} #{fuel[3]} has a lot cylinders and a good highway mileage including #{fuel[10].to_i - fuel[9].to_i} points higher than conventional."
	else 
		puts "The #{fuel[1]} #{fuel[3]} have few cylinders and a good highway mileage including #{fuel[10].to_i - fuel[9].to_i} points higher than conventional."
	end
end

puts ""

puts ""
puts ""


more_than_4 = hwy_fe.select{|fuel| fuel[7].to_i > 4}

puts more_than_4.length

puts ""
puts ""
puts ""
puts ""
puts ""
puts ""

equals_4 = hwy_fe.select{|fuel| fuel[7].to_i == 4}

puts equals_4.length

puts ""
puts ""
puts ""
puts ""


more_than_4.each do |fuel|
	puts "The #{fuel[1]} #{fuel[3]} have #{fuel[7]} cylinders and a good highway mileage including #{fuel[10].to_i - fuel[9].to_i} points higher than conventional."
end

puts ""

equals_4.each do |fuel|
	puts "The #{fuel[1]} #{fuel[3]} have #{fuel[7]} cylinders and a good highway mileage including #{fuel[10].to_i - fuel[9].to_i} points higher than conventional."
end

puts ""
puts ""
puts ""


#Identify the cars with the top five Combined FE values with more than 4 cylinders.

comb_fe_over_4 = data.select{|fuel| fuel[11].to_i && fuel[7].to_i > 4}

top_five = comb_fe_over_4[0..4]

puts ""
puts ""

top_five.each do |fuel|
	puts "The #{fuel[1]} #{fuel[3]} have #{fuel[7]} cylinders and a good highway mileage including #{fuel[11].to_i} points of Combined FE - Conventional fuel."
end

#Top five cars combined FE with 4 cylinders.

puts ""
puts ""

comb_fe_over_4 = data.select{|fuel| fuel[11].to_i && fuel[7].to_i == 4}

top_five = comb_fe_over_4[0..4]

puts ""
puts ""

top_five.each do |fuel|
	puts "The #{fuel[1]} #{fuel[3]} have #{fuel[7]} cylinders and a good highway mileage including #{fuel[11].to_i} points of Combined FE - Conventional fuel."
end

puts ""
puts ""


#Top five cars with the greatest difference in the City vs Hwy (= City-Hwy).

diff_city_hwy_fe = data.select{|fuel| (fuel[9].to_i - fuel[10].to_i)}.sort_by.first

top_five_diff = diff_city_hwy_fe[0..4]

top_five.each do |fuel|
	puts "The #{fuel[1]} #{fuel[3]} have #{fuel[7]} cylinders and a good highway mileage including #{fuel[9].to_i-fuel[10].to_i} points of difference in higher FE when driving in the City vs. Highway."
end

puts ""
puts ""
puts ""

