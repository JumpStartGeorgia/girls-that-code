puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

poem = %q{Jack and Jill went up the hill
        To fetch a pail of water.
        Jack fell down and broke his crown,
        And Jill came tumbling after.}
        
puts "------------------"
puts "----- Step 3 -----"
puts "------------------"        
        
new_poem = poem.gsub ('Jill','Nino and Tako').gsub('Jack','Giorgi')

puts "------------------"
puts "----- Step 4 -----"
puts "------------------" 

index_water = new_poem.index('water')
new_poem=new_poem.insert(index_water, 'borjomi')


puts "------------------"
puts "----- Step 5 -----"
puts "------------------" 

length.poem = poem.length
count_a = poem.count "a"
count_g = poem.count "g"
calc = count_a - count_g * 5
calc_float = calc.to_f



puts "------------------"
puts "----- Step 6 -----"
puts "------------------" 