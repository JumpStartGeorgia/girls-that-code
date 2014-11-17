puts "------------------"
puts "----- Question 1 -----"
puts "------------------"

names_string = "Tako Ilia Nino Irakli Eka Levani Khatia Giorgi Mari Lasha Maiko Otari Salome Nika"
puts "Georgian Names = #{names_string}"

names = names_string.split(" ")
puts "Names = #{names}"

puts "------------------"
puts "----- Question 2 -----"
puts "------------------"

names1 = ["Tako", "Ilia", "Nino", "Irakli", "Eka", "Levani", "Khatia", "Giorgi", "Mari", "Lasha", "Maiko", "Otari", "Salome", "Nika"]
puts "Names = #{names1}"

names2 = %w(Tako Ilia Nino Irakli Eka Levani Khatia Giorgi Mari Lasha Maiko Otari Salome Nika)
puts "Names = #{names2}"

puts "------------------"
puts "----- Question 3 -----"
puts "------------------"

num_names = names1.uniq.count
num_names_str = "The number of names is #{num_names}"
puts num_names_str

puts "------------------"
puts "----- Question 4 -----"
puts "------------------"

demographics=[["Tako","Female"],["Ilia","Male"],["Nino","Female"],["Irakli","Male"],["Eka","Female"],["Levani","Male"],["Khatia","Female"],["Giorgi","Male"],
["Mari","Female"],["Lasha","Male"],["Maiko","Female"],["Otari","Male"],["Salome","Female"],["Nika","Male"]]

puts "The Gender of #{demographics.last[0]} is #{demographics.last[1]}"

puts "------------------"
puts "----- Question 5 -----"
puts "------------------"

name_index=names.index("Nino")
puts "#{names1[name_index]} is my friend"

puts "------------------"
puts "----- Question 6 -----"
puts "------------------"

names1.delete_at(name_index)
puts "New Names = #{names1}" 


########################
## Feedback from Jason
## - awesome job!