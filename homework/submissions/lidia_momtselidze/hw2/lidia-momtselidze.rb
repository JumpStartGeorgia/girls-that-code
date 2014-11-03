puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

poem="Jack and Jill went up the hill
  To fetch a pail of water.
  Jack fell down and broke his crown,
  And Jill came tumbling after."
puts "poem=\n#{poem}"  

puts "------------------"
puts "----- Step 3 -----"
puts "------------------"  
  
new_poem=poem.gsub('Jill', 'Nino and Tako').gsub('Jack', 'Giorgi')

puts "new_poem with substitutions=\n#{new_poem}" 

puts "------------------"
puts "----- Step 4 -----"
puts "------------------" 

index_water=new_poem.index('water')
new_poem=new_poem.insert(index_water, 'borjomi ')
puts "new_poem with insert=\n#{new_poem}" 

puts "------------------"
puts "----- Step 5 -----"
puts "------------------" 

length_poem=poem.length
puts "poem length=#{length_poem}"
count_a=poem.downcase.count "a"
puts "count a=#{count_a}"
count_g=poem.downcase.count "g"
puts "count g=#{count_g}"
calc=(count_a-count_g)*5
puts "count subtraction=#{calc}"
calc_float=calc.to_f
puts "calc in float=#{calc_float}"

puts "------------------"
puts "----- Step 6 -----"
puts "------------------" 

poem.gsub!('Jill', 'Nino and Tako ').gsub!('Jack', 'Giorgi')
puts "poem=\n #{poem}\n\n"
puts "length/count=#{(poem.length/poem.count(' ').to_f).round(5)}"

########################
## Feedback from Jason
## - 'insert' automatically updates the value of the string so you do not need new_poem = new_poem.insert
##    You just need new_poem.insert
## - Counting of letters 'a' and 'g' - great job of using downcase!
## - Calc - good use of using '()' for the computation!
## - Bonus - great job!
## - Overall, good job!

