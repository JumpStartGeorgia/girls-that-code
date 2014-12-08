require 'csv'
cars = CSV.read("2015_fuel_efficiency_guide.csv", headers: true)
puts cars.length
puts "--------------------"
puts " Find the top most fuel efficient cars of 2015 "
puts "--------------------"
cars_efficient = cars.select{|cars| cars[9].to_i>=40}
puts cars_efficient.length
cars_efficient_sorted = cars_efficient.sort_by{|cars| cars[9]}
cars_efficient_sorted
cars_efficient_top = cars_efficient_sorted.map {|cars| cars[1]}.uniq.sort[0..4]
puts cars_efficient_top
puts "the top most fuel efficient cars of 2015 are #{cars_efficient_top[0]}, #{cars_efficient_top[1]}, #{cars_efficient_top[2]}, #{cars_efficient_top[3]}, #{cars_efficient_top[4]}"
puts "--------------------------------"
puts "What percent of all the cars have 2-wheel drive?"
2_wheel = cars.select{ |cars| cars[28].include?('2-Wheel Drive') }.length / cars.length.to_i * 100
puts 2_wheel
puts "-----------------------------"
puts "Find all the cars that have a highway FE (Hwy FE (Guide) - Conventional Fuel) value which is 10 points higher than the conventional
FE rating (City FE (Guide) - Conventional Fuel). Of those, if the number of cylinders the car has is 2,
print to the screen the manufacturer (Mfr Name) and the carline (Carline) and that it has few cylinders yet 
good highway mileage including the # points higher than conventional.
If it has more cylinders, do the same except say it has a lot of cylinders yet good highway mileage."
puts "--------------------------"

