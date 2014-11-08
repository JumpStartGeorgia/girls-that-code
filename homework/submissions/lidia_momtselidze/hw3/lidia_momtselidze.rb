puts "------------------"
puts "----- Step 1 -----"
puts "------------------"

names_string="Nino Mari Natia Giorgi Dato Nika Zviadi Aleko Nodari Salome Keti Vaxo Andro Tato Tiko Eteri"

puts "names_string =\n#{names_string}" 

names=names_string.split(" ")

puts "names =\n#{names}" 

puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

names1 = ["Nino", "Mari", "Natia", "Giorgi","Dato", "Nika", "Zviadi", "Aleko","Nodari","Salome", "Keti", "Vaxo", "Andro","Tato","Tiko","Eteri"]

puts "names1 =\n#{names1}" 

names2= %w(Nino Mari Natia Giorgi Dato Nika Zviadi Aleko Nodari Salome Keti Vaxo Andro Tato Tiko Eteri)

puts "names2 =\n#{names2}" 

puts "------------------"
puts "----- Step 3 -----"
puts "------------------"

num_names=names.uniq.length

num_names_str="Unique names in my array is #{num_names}"

puts "num_names_str =\n#{num_names_str}" 

puts "------------------"
puts "----- Step 4 -----"
puts "------------------"

demographics=[["Nino","F"],["Mari","F"],["Natia","F"],["Giorgi","M"],["Dato","M"],["Nika","M"],["Zviadi","M"],["Aleko","M"],
["Nodari","M"],["Salome","F"],["Keti","F"],["Vaxo","M"],["Andro","M"],["Tato","M"] ,["Tiko","F"] ,["Eteri","F"] ]

puts "The Gender of #{demographics.last[0]} is #{demographics.last[1]}"

puts "------------------"
puts "----- Step 5 -----"
puts "------------------"

name_index=names.index("Natia")
puts "#{names[name_index]} is my friend"

puts "------------------"
puts "----- Step 6 -----"
puts "------------------"

names.delete_at(name_index)
puts "names =\n#{names}" 
