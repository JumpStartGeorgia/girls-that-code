puts""
puts "STEP 1: Creating new file, folder and directory"
puts ""
puts "New file created on Desktop. And new folder created in GTC Github Submissions. I am now working in the file saved in the directory Hw2  on my desktop."
puts ""
puts ""
puts "STEP 2: Creating a poem_variable"
puts ""

poem = %q{
Jack and Jill went up the hill
To fetch a pail of water.
Jack fell down and broke his crown
And Jill came tumbling after.
}

puts "poem = #{poem}"

puts ""
puts "STEP 3: Creating a new_poem_variable"
puts ""
new_poem = poem.gsub( 'Jill', 'Nino and Tako').gsub( 'Jack','Giori')

puts new_poem

puts ""
puts "STEP 4: Adding 'borjomi' to the word 'water' in new_poem"
puts ""
to_add = "borjomi"
puts ""
index_water = new_poem.index('water')
new_poem = new_poem.insert(index_water, to_add)
puts ""
puts ""
puts "Updated new_poem = #{new_poem}"

puts ""
puts "STEP 5: Performing calculations"
puts ""
lenght_poem = poem.length
puts "The lenght of poem = #{lenght_poem}"
puts ""
count_a = poem.count "a"
puts "Counting 'a's in poem = #{count_a}"
puts ""
count_g = poem.count "g"
puts "Counting 'g's in poem = #{count_g}"
puts ""
calc = (count_a - count_g)*5
puts "Calculate = #{calc}"
calc_float = calc.to_f
puts "Converting numbers to float = #{calc_float}"
puts ""
puts "STEP 6: BONUS"
puts ""

poem.gsub!( 'Jill', 'Nino and Tako').gsub!( 'Jack','Giori')
puts "poem = #{poem}"


puts "poemlength/spacecount = #{(poem.length/poem.count(' ').to_f).round(5)}"





