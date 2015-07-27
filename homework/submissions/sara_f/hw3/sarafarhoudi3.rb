puts "Homework3"

puts ""
puts ""
puts "Exercise 1"

names_string = ["Nino Mariam Mariko Nukri Irakli Ali Ia Anton Eric Eka Nathan Tako Jason Tamo Ketevan Giorgi Tamuna Khatuna"]

puts names_string
puts ""
puts ""
names = %w[Nino Mariam Mariko Nukri Irakli Ali Ia Anton Eric Eka Nathan Tako Jason Tamo Ketevan Giorgi Tamuna Khatuna]

puts names

puts ""
puts ""
puts "Exercise 2"

puts ""
puts "Array1"
puts ""

names1 = ["Nino", "Mariam", "Marika", "Nukri", "Irakli", "Ali", "Ia", "Anton", "Erik", "Eka", "Nathan", "Tako", "Jason", "Tamo", "Ketevan", "Giorgi", "Tamuna", "Khatuna"]

puts names1

puts ""
puts ""
puts "Array2"
puts ""

names_string = "Nino Mariam Jason Mariam Irakli Ia Anton Eric Elisabeth Nathan Brian Tamo Kristine Giorgi"

names2 = names_string.split(" ")

puts names2

puts ""
puts ""
puts "Exercise 3"  
puts ""

num_names = names.uniq.length

puts num_names

puts ""
puts ""

num_names_str = "There are #{num_names} unique names in this array."

puts num_names_str

puts ""
puts ""
puts "Exercise 4" 
puts ""

demographics = [["Nino","F"],["Mariam","F"],["Marika","F"],["Nukri","M"],["Irakli","M"],["Ali","M"],["Ia","F"],["Anton","M"],["Erik","M"],["Eka","F"],["Nathan","M"],["Tako","F"],["Jason","M"],["Tamo","F"],["Ketevan","F"],["Giorgi","M"],["Tamuna","F"],["Khatuna","F"]]

puts "The Gender of #{demographics.last[0]} is #{demographics.last[1]}."
puts ""
puts ""
puts "Exercise 5"
puts ""
puts "" 

name_index = names.index("Khatuna")

puts "#{names[name_index]} is my friend."

puts ""
puts ""
puts "Exercise 6"
puts ""
puts ""

names.delete_at(name_index)

puts "Names =\n#{names}"



##############################
## feedback from jason:
## #1 - names_string should just be a string of names - not an array
##    - then to get an array of names you want to split the string by spaces (exactly what you did in #2 for names2)
##    - syntax for %w is %w(), not %w[]
## Good job on the rest!
