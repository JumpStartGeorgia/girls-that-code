puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

poem = %q{Jack and Jill went up the hill
        To fetch a pail of water.
        Jack fell down and broke his crown,
        And Jill came tumbling after.}
        
puts "poem = #{poem}"
        
puts "------------------"
puts "----- Step 3 -----"
puts "------------------"        
        
new_poem = poem.gsub('Jill','Nino and Tako').gsub('Jack','Giorgi')
puts "new_poem = #{new_poem}"

puts "------------------"
puts "----- Step 4 -----"
puts "------------------" 

index_water = new_poem.index('water')
new_poem=new_poem.insert(index_water, 'borjomi ')
puts "new_poem = #{new_poem}"

puts "------------------"
puts "----- Step 5 -----"
puts "------------------" 

length_poem = poem.length
puts "length_poem=#{length_poem}"
count_a = poem.count "a"
puts "count_a= #{count_a}"
count_g = poem.count "g"
puts "count_g= #{count_g}"
calc = (count_a - count_g)*5
puts "calc= #{calc}"
calc_float = calc.to_f
puts "calc_float= #{calc_float}"

# puts "------------------"
# puts "----- Step 6 -----"
# puts "------------------" 