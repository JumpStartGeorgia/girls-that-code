###########################################
## I have taken you quizz.rb file and made some 
## changes to it so the script will not work or will do the wrong thing.
## Go through the script and fix it so it works correctly and shows what it is supposed to show.
###########################################

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

selected_fuel = data.select{|fuel| fuel[9].to_i}.sort_by{|fuel| -fuel[9].to_i >=40}

selected_top_five = selected_fuel[0..4]

mapped_selected_names = selected_top_five.map{|fuel| fuel[1]}.uniq


puts "The manufacturers of the top 5 most fuel efficient cars of 2015 are
#{mapped_selected_names.join(", ")}."

puts""
puts""


#Mapping out the cars with 2-wheel drive


drive_desc = data.select {|drive| drive[28].include?'2-Wheel Drive'}

percent = (drive_desc.length.to_f/data.length.to_f) *100


puts ""

puts "#{percent.round} % of the cars are two wheel drive."

puts""
puts""

# Identify the cars that have a Hwy FE value which is 10 points higher than the conventional City FE.

hwy_fe = data.select{|fuel| (fuel[10].to_i - fuel[9].to_i) >= 10}


puts "There are #{hwy_fe.length} cars that have a highway FE value which is 10 points or higher than the conventional FE rating."

puts ""
puts ""
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

# How many cars have more than 4 cylinders and a City FE which is 10 points higher than Hwy Fe?

more_than_4 = hwy_fe.select{|fuel| fuel[7].to_i > 4}

puts more_than_4.length

puts ""
puts ""
puts ""
puts ""
puts ""


# How many cars have 4 cylinders and a City FE which is 10 points higher than Hwy Fe?

equals_4 = hwy_fe.select{|fuel| fuel[7].to_i == 4}

puts equals_4.length

puts ""
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


puts "Identify the cars with the top five Combined FE values with MORE than 4 cylinders."
puts ""
puts ""

cars_over_4 = data.select{|fuel| fuel[7].to_i > 4}.sort_by{|fuel| -fuel[11].to_i}

top_five = cars_over_4[0..4]

puts ""
puts ""

top_five.each do |fuel|
  puts "The #{fuel[1]} #{fuel[3]} have #{fuel[7]} cylinders and a good highway mileage including #{fuel[11].to_i} points of Combined FE - Conventional fuel."
end
puts ""
puts ""

puts "Top five cars combined FE WITH 4 cylinders."

puts ""
puts ""

cars_with_4 = data.select{|fuel| fuel[7].to_i == 4}

top_five = cars_with_4[0..4]

puts ""
puts ""

top_five.each do |fuel|
  puts "The #{fuel[1]} #{fuel[3]} have #{fuel[7]} cylinders and a good highway mileage including #{fuel[11].to_i} points of Combined FE - Conventional fuel."
end

puts ""
puts ""


puts "Top five cars with MORE than 4 cylinders sorted by the greatest difference in the Hwy- City (= Hwy -City)."

puts ""
puts ""

diff_city_hwy_fe_more_than_4 = data.select{|fuel| fuel[7].to_i >4}.sort_by{|fuel| -(fuel[10].to_i - fuel[9].to_i)}

top_five_diff = diff_city_hwy_fe_more_than_4[0..4]

top_five_diff.each do |fuel|
  puts "The #{fuel[1]} #{fuel[3]} have #{fuel[7]} cylinders and a good highway mileage including #{fuel[10].to_i-fuel[9].to_i} points of difference in FE when driving in the City (#{fuel[9]}) vs. Highway (#{fuel[10]})."
end

puts ""
puts ""
puts ""

puts  "Top five WITH 4 cylinders sorted by the greatest difference in the Hwy- City (= Hwy -City)."
puts ""
puts ""

diff_city_hwy_fe_with_4 = data.select{|fuel| fuel[7].to_i == 4}.sort_by{|fuel| -(fuel[10].to_i - fuel[9].to_i)}

top_five_diff_with_4 = diff_city_hwy_fe_with_4[0..4]

top_five_diff_with_4.each do |fuel|
  puts "The #{fuel[1]} #{fuel[3]} have #{fuel[7]} cylinders and a good highway mileage including #{fuel[10].to_i-fuel[9].to_i} points of difference in FE when driving in the City (#{fuel[9]}) vs. Highway (#{fuel[10]})."
end

puts ""
puts ""
puts ""
puts ""

puts "Sorting the top five manufacturers sorted by how many carlines they have? --> Manufactuers name and total number of cars."

car_mfr = data.map{|fuel| fuel[1]}
uniq_mfr = car_mfr.uniq
puts ""

puts "There are #{uniq_mfr.length} manufacturers and they are"

puts ""

puts uniq_mfr
puts ""
puts ""
puts ""

puts "How many carelines does a manufacturer have?"

mfr_array = data.map{|fuel| fuel[1]}

car_count = Hash.new(0)

mfr_array.each do |mfr|
  car_count[mfr] += 1 
end

puts ""
puts car_count

puts ""
puts ""

car_count_sorted = car_count.sort_by { |k, v| -v}

car_count_sorted.each do |k, v|
  puts "Key: #{k}, Value: #{v}"
end

top_five = car_count_sorted[0..4]

puts ""
puts ""

puts "The top five manufacturers sorted by those with most cars are:"

puts ""

puts top_five

puts ""
puts ""