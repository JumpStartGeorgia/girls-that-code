## homework 3
##### Sorry for late submission 

puts "----------------------"
puts "----- Question 1 -----"
puts "----------------------"

names_string = "Natia, Tornike, Keto, Nino, Mariam, Giorgi, Mzia, Levan, Taia, Tamar, Lia, Irakli, Toma, Nana"
puts "names_string = #{names_string}"

names=["Natia", "Tornike", "Keto", "Nino", "Mariam", "Giorgi", "Mzia", "Levan", "Taia", "Tamar", "Lia", "Irakli", "Toma", "Nana"]
puts "names = #{names}"



puts "----------------------"
puts "----- Question 2 -----"
puts "----------------------"

names1=%w(Natia, Tornike, Keto, Nino, Mariam, Giorgi, Mzia, Levan, Taia, Tamar, Lia, Irakli, Toma, Nana)
puts "names1 = #{names1}"

names2=names_string.split("\n")
puts "names2 = #{names2}"



puts "----------------------"
puts "----- Question 3 -----"
puts "----------------------"

num_names=names.uniq
num_names.length
puts "There are #{num_names.length} names in this array."

num_names_str = num_names.join(", ")
puts "num_names_str = #{num_names_str}"


puts "----------------------"
puts "----- Question 4 -----"
puts "----------------------"

demographics = [["Natia", "Female"], ["Tornike", "Male"], ["Keto", "Female"], ["Nino", "Female"], ["Mariam", "Female"], ["Giorgi", "Male"], ["Mzia", "Female"], ["Levan", "Male"], ["Taia", "Female"], ["Tamar",  "Female"], ["Lia", "Female"], ["Irakli",  "Male"], ["Toma", "Male"], ["Nana",  "Female"]]
puts "The Gender of #{demographics.last[0]} is #{demographics.last[1]}"



puts "----------------------"
puts "----- Question 5 -----"
puts "----------------------"

name_index=names.index("Keto")
puts "#{names[name_index]} is my sister"



puts "----------------------"
puts "----- Question 6 -----"
puts "----------------------"

names.delete_at(2)
puts "names.delete_at(2) = #{names.delete_at(2)}"
puts names

#### Nino is number 3. Why it deletes Nino not Keto? 










