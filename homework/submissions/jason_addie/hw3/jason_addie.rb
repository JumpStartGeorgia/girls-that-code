# Homework Assignment #3
# - Playing with arrays and building on what came before
# - When in doubt, try: http://ruby-doc.org/core-2.1.3/Array.html

##################
#### IMPORTANT: after each step, use a puts statement to write out the variable(s) that you just created, like:
#### puts "new_poem = #{new_poem}"
#### 
#### It will also be good to use a puts statement as a separator between each step, like:
#### puts "------------------"
#### puts "----- Question 3 -----"
#### puts "------------------"
####
#### These are not required, but it does help make it easier to look at your output and know what your are looking at.
##################

###
# 1. Please, make a string of as many Georgian names as possible.
#    Ex. names_string = "Nino Mariam Jason Mariam Irakli Ia Anton Eric Elisabeth
#                        Nathan Brian Tamo Kristine Giorgi"
#
#        puts names_string    
#
#    Now, using what you have learned so far, turn that string into an array of
#    names and assign it to the variable 'names'. Print that variable to the
#    screen.
#
#    puts names
puts ""
puts "-----------------------------"
puts "-- #1 - create array of Georgian names from string --"
puts ""
names_string = "Nino Mariam Mariam Irakli Ia Anton Elisabeth Tamo Kristine Giorgi"
names = names_string.split(' ')
puts "the names array = #{names}"


#
# 2. Please, repeat the first exercise, but create an array without creating a
#    string first. There are several ways to create an array. Do it two
#    different ways. Assign those arrays to the variables 'names1' and 'names2'.
#    Print those variables to the screen.
#
#    puts names1
#    puts names2
#

puts ""
puts "-----------------------------"
puts "-- #2 - create array of names from scratch --"
puts ""
names1 = ["Nino", "Mariam", "Irakli", "Ia"]
names2 = %w(Nino Mariam Mariam Irakli Ia Anton Elisabeth Tamo Kristine Giorgi)
puts "names1 creation using [] = #{names1}"
puts "names2 creation using %w = #{names2}"

# 3. Going back to the array 'names' from question 1, use the 'uniq' method to 
#    ensure that you only have one of each name and create a variable called
#    'num_names' and assign it to the number of names in the array. Insert it 
#    into a string that, in English, writes to the screen using a complete 
#    sentence the number of names you thought of. Assign that to a string
#    'num_names_str'.
#
#    puts num_names_str

puts ""
puts "-----------------------------"
puts "-- #3 - count unique names --"
puts ""
num_names = names.uniq.length
num_names_str = "Number of unique items in names = #{num_names}."
puts num_names_str

#
# 4. Now, go back to your 'names' array from question 1 and create a nested  
#    array in which each name (they should all be unique at this point) is    
#    replaced with a name and a 'gender' attribute. Assign this new array to the   
#    variable 'demographics'. Write to the screen the gender of the last person   
#    in your list using a complete sentence.

puts ""
puts "-----------------------------"
puts "-- #4 - nested array --"
puts ""
demographics = []
demographics << %w(Nino F)
demographics << %w(Mariam F)
demographics << %w(Irakli M)
demographics << %w(Ia F)
demographics << %w(Anton M)
puts "demographics = #{demographics}"
puts "the gender of the last person is #{demographics.last[1]}"

#
# 5. Now, choose a name from your array 'names' and get its
#    index number, and assign it to a variable called 'name_index'. Then, using
#    your variables, write, using a complete English sentence, the name to the
#    screen. It should read something like: "Mariam is my friend". Remember 
#    question 4 from the previous homework assignment?  
#
puts ""
puts "-----------------------------"
puts "-- #5 - using index --"
puts ""
name_index = names.index('Ia')
puts "#{names[name_index]} is my friend!"

# 6. Bonus Question!
#
#    Go back to question 5 and use the variable 'name_index' to delete that
#    element in the array 'names'. Use the Array API to find this method and use it.
#    Write the new array to screen.
#
#   puts names

puts ""
puts "-----------------------------"
puts "-- #6 - bonus - delete item --"
puts ""
names.delete_at(name_index)

puts "after deleted index #{name_index}, names is now #{names}"
###


### 
# If you get stuck, don't worry. Try to work through it step-by-step. 
# If you still can't figure out the solution, post a question in the 
# girls-that-code repo issues:
#
# https://github.com/JumpStartGeorgia/girls-that-code/issues
#
# When you are done, add your file to your the git repository.
# Then commit your changes with a relevant message.
# Pull any new changes from the git repo first.
# Then push your changes to the repo.
###
