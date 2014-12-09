# 1. Use the csv gem to parse the datafile entitled: 2015_fuel_efficiency_guide.csv
#     The file is located in the data folder which now exists in the git repository.
#     Save the parsed data to the variable 'cars'.

puts "_____1_____"

require 'csv'
cars = CSV.read('2015_fuel_efficiency_guide.csv', headers: true)
puts cars.length


# 2. Find the top most fuel efficient cars of 2015. This means that their City FE for Conventional Fuel
#     is is greater than or equal to 40. Please, write in a pretty way, the top manufacturers (Mfr Name) of the
#     top 5 cars (no duplicates).
#     Ex. The manufacturers of the top 5 most fuel efficient cars of 2015 are X, Y, Z.

puts "_____2_____"

most_efficient_cars = cars.select {|record| record[0].to_i==2015 && record[9].to_i >= 40}
top_cars = most_efficient_cars.map {|record| record[1][0..4]}
puts "The manufacturers of the top 5 most fuel efficient cars of 2015 are #{top_cars.uniq}"




# 3. What percent of all the cars have 2-wheel drive?
#     Percent here equals the number of cars with 2-wheel drive / total numbers of cars * 100

puts "_____3_____"

wheel = cars.select {|record| record[28].include?'2-Wheel Drive'}

percent = (wheel.length.to_f/cars.length.to_f) * 100
puts percent.round




# 4. Find all the cars that have a highway FE (Hwy FE (Guide) - Conventional Fuel) value which is 10 points higher than the conventional
#     FE rating (City FE (Guide) - Conventional Fuel). Of those, if the number of cylinders the car has is 2,
#     print to the screen the manufacturer (Mfr Name) and the carline (Carline) and that it has few cylinders yet 
#     good highway mileage including the # points higher than conventional.
#     If it has more cylinders, do the same except say it has a lot of cylinders yet good highway mileage.
#     Ex. "The Toyota Prius C has few cylinders and good highway mileage (X more than conventional)."

puts "_____4_____"

hwy_fe = cars.select {|record| [record[10] - record[9]].to_f >= 10}
puts hwy_fe



