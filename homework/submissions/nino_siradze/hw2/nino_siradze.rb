# Homework Assignment #2
# - Playing with strings and numbers

puts "------------------------------------------------"
puts "-------------------- Step 1 --------------------"
puts "-----------created hw2 folder and file----------"
puts "------------------------------------------------"
puts "\n"

puts "------------------------------------------------"
puts "-------------------- Step 2 --------------------"
puts "-----------creating variabele 'poem'------------"
puts "------------------------------------------------"
puts "\n"

poem = " Jack and Jill went up the hill
 To fetch a pail of water.
 Jack fell down and broke his crown,
 And Jill came tumbling after."

puts "poem=\n#{poem}\n\n"

puts "------------------------------------------------"
puts "-------------------- Step 3 --------------------"
puts "---------Substitute Jill -> Nino and Tako-------"
puts "---------Substitute Jack -> Giotgi--------------"
puts "------------------------------------------------"
puts "\n"

new_poem = poem.gsub('Jill','Nino and Tako').gsub('Jack','Giorgi')

puts "new_poem = \n#{new_poem}\n\n"

puts "------------------------------------------------"
puts "-------------------- Step 4 --------------------"
puts "---added 'borjomi' before 'water' in new_poem---"
puts "------------------------------------------------"
puts "\n"

index_water=new_poem.index('water')
new_poem=new_poem.insert(index_water,'borjomi ')
puts "#{new_poem}\n\n"

puts "------------------------------------------------"
puts "-------------------- Step 5 --------------------"
puts "-----------------calculations-------------------"
puts "------------------------------------------------"
puts "\n"

length_poem=poem.length    
puts "length_poem = #{length_poem}" 

count_a=new_poem.downcase.count'a'
puts "count_a = #{count_a}"

count_g=new_poem.downcase.count'g'
puts "count_g = #{count_g}"

calc=(count_a-count_g)*5 #not sure if you meant (count_a-count_g)*5 or count_a-count_g*5 but i think that deosn't matter in this case
puts "calc = #{calc}"

calc_float=calc.to_f
puts "calc_float = #{calc_float}"
puts "\n"


puts "------------------------------------------------"
puts "-------------------- Step 6 --------------------"
puts "----------------changing 'poem'-----------------"
puts "------------- extra calculations ---------------"
puts "------------------------------------------------"
puts "\n"

puts "modified poem = \n#{poem.gsub!('Jill','Nino and Tako').gsub!('Jack','Giorgi')}\n\n"
puts "poem_length / poem_space_count = #{(poem.length/poem.count(' ').to_f).round(5)}\n\n"

########################################################################################################################################################## 
# 
# # all the calculations depend on how we define variable 'poem', spaces are treated differently depending on definition.
# # as for our example, there are spaces and 'new line' symbols in the beginning of each line, so they are counted.
# # i think the correct way to define 'poem', in order to get rid of extra spaces and 'invisible' new lines, would be something like this: 
# # poem='Jack and Jill went up the hill\nTo fetch a pail of water.\nJack fell down and broke his crown,\nAnd Jill came tumbling after.'
# # alternatively, we can also use strip method in some cases.
# # but in this case in 'step 6' we will have a float which has less than 5 symbols after decimal point, so i left poem with extra spaces and new lines :)
# 
##########################################################################################################################################################








