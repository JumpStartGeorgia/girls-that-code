require 'csv'
cars = CSV.read('2015_fuel_efficiency_guide.csv', headers: true)
puts cars.length
"---------------------"

# Find the top most fuel efficient cars of 2015. This means that their City FE for Conventional Fuel
# is is greater than or equal to 40. Please, write in a pretty way, the top manufacturers (Mfr Name) of the
# top 5 cars (no duplicates).
# Ex. The manufacturers of the top 5 most fuel efficient cars of 2015 are X, Y, Z.

efficient_cars = cars.map{|car| car[9]}
puts efficient_cars

unique_efficient_cars = efficient_cars.uniq
puts unique_efficient_cars

unique_efficient_cars = cars.select {|car| car[9].to_i >= 40}
puts unique_efficient_cars.first

puts "The manufacturers of the top 5 most fuel efficient cars of 2015 are #{"unique.efficient_cars.sort[0..4]"}"
"---------------------"

# What percent of all the cars have 2-wheel drive?
#     Percent here equals the number of cars with 2-wheel drive / total numbers of cars * 100

two_cars = (cars.select {|wheel| wheel[29] == "2-Wheel Drive, Front"})/cars.length*100
puts two_cars
