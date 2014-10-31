poem = %q{
  Jack and Jill went up the hill
  To fetch a pail of water.
  Jack fell down and broke his crown,
  And Jill came tumbling after.
  } 
  
 # First activity 
 #  - Substitute all cases of 'Jill' for 'Nino and Tako'
 #  - Substitute all cases of 'Jack' for 'Giorgi'
    new_poem = poem.gsub('Jill', 'Nino and Tako').gsub('Jack','Giorgi')
    puts '------- Substitute -------'
    puts '  '
    puts new_poem
    puts '  '

# Second activity
# Insert 'borjomi' before 'water'

  index_water = 'borjomi '
  
  puts "------ Insert ------"
  puts ' '
  puts new_poem.insert(66,index_water)
  puts ' '

# Third activity
# length = 134
   puts " ------ Calculations ------"
   puts ""
  length_poem = poem.length
  count_a = poem.count "a"
  puts "The number of 'a's in the poem is #{count_a}"
  puts ""
  count_g = poem.count "g"
  puts "The number of 'g's in the poem is #{count_g}"
  puts ""
  calc = count_a-count_g*5
  puts "Count_a minus count_g times 5 is #{calc}"
  puts ""
  calc_float = calc.to_f
  puts "Calculation's new classification is #{calc_float.class}"
 
# Bonus activity
# gsub! - changing the original variable
  poem.gsub!('Jill', 'Nino and Tako').gsub!('Jack','Giorgi')
  puts ""
  puts "-------- Bonus activity-------"
  puts ""
  puts poem