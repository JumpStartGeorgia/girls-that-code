puts "----------------------------------------------"
puts "--------------step1---------------------------"
puts "---create a new variable poem-----------------"
puts ""
# create a variable called 'poem'
poem = "Jack and Jill went up the hill
To fetch a pail of water.
Jack fell down and broke his crown,
And Jill came tumbling after"
puts poem 
puts "----------------------------------------------"
puts "------------step2-----------------------------"
puts "----------new_poem-----------"
puts ""
# Substitute all cases of 'Jill' for 'Nino and Tako'
# Substitute all cases of 'Jack' for 'Giorgi'
new_poem = poem.gsub('Jill', 'Nino and Tako').gsub('Jack', 'Giorgi')
puts new_poem
puts "-----------------------------------------------"
puts "------------step3------------------------------"
puts "-----------------------------------------------"
# Add the word 'borjomi' before the word water in 'new_poem'
 index_water = new_poem.index('water')
 puts new_poem.insert(borjomi ,#{index_water})
 puts ""
 puts "-----------step 4--------------------"
 puts "calculations"
## Perform the following calculations
coun_a= poem.count 'a'
puts 'the count of a in the poem is #{count_a}
 count_g = poem.count "g"
 puts 'there are #{count_g} g in the poem'
 calc = (count_a-count_g)*5
 puts 'the count of a minus a count of g times five is #{calc}'
 calc_float = calc.to_f 
 puts 'calc_float is #{calc_float}'
 length_poem = poem.length
