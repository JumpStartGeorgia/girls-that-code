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
new_poem = new_poem.insert(index_water, 'borjomi ')
puts "Updated new_poem = #{new_poem}"

puts "------------------"
puts "----- Step 5 -----"
puts "------------------" 

length_poem = poem.length
puts "length of the poem = #{length_poem}"
count_a = poem.count "a"
puts "count how many 'a's are in poem = #{count_a}"
count_g = poem.count "g"
puts "count how many 'g's are in poem= #{count_g}"
calc = (count_a - count_g)*5
puts "calculate = #{calc}"
calc_float = calc.to_f
puts "change calc to float = #{calc_float}"

puts "------------------"
puts "----- Step 6 -----"
puts "------------------" 

poem.gsub!('Jill','Nino and Tako').gsub!('Jack','Giorgi')
puts "poem = #{poem}"
puts "length/count = #{(poem.length/poem.count(' ').to_f).round(5)}"

########################
## Feedback from Jason
## - 'insert' automatically updates the value of the string so you do not need new_poem = new_poem.insert
##    You just need new_poem.insert
## - calc - good use of using '()' for the computation!
## - bonus - great job!
## - Overall, good job!
