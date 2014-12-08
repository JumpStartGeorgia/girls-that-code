puts "------------------"
puts "----- Step 1 -----"
puts "------------------"
require 'csv'
cars = CSV.read("D:/Ruby/girls-that-code/datafiles/2015_fuel_efficiency_guide.csv", headers:true)

puts cars.length

puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

cars_select=cars.select {|record| record[0].to_i==2015 && record[9].to_i>=40}
sorted_cars=cars_select.sort_by {|zip| -zip[9].to_i}
cars_map=cars_select.map{|record| record[1]}.uniq!

puts "The manufacturers of the top 5 most fuel efficient cars of 2015 are #{cars_map[0]},#{cars_map[1]},#{cars_map[2]},#{cars_map[3]}"


puts "------------------"
puts "----- Step 3 -----"
puts "------------------"

cars_two_wheel=cars.select{|record| record[28].include? "2-Wheel Drive"}
percent=((cars_two_wheel.length/cars.length)*100).to_f
puts percent

puts "------------------"
puts "----- Step 4 -----"
puts "------------------"

select_cars=cars.select{|record| record[11]-record[1]>=10}
select_cars.each do
if select_cars[7]==2 
puts
else
puts


end
end
