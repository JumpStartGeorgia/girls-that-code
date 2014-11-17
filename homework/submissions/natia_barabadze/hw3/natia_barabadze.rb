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



########################
## Feedback from Jason
## 1 - for creating the array, what you did works, but you could have also done names.split(' ')
## 2 - for the 2nd example, split('\n') does not work since there are no '\n' in your string. You should use split(' ').
##     - if you look at the output you will see that you have an array of one item: ["Natia, Tornike, Keto, Nino, Mariam, Giorgi, Mzia, Levan, Taia, Tamar, Lia, Irakli, Toma, Nana"]
##     - if it worked, you would see quotes around each name like you go in the first part: ["Natia,", "Tornike,", "Keto,", "Nino,", "Mariam,", "Giorgi,", "Mzia,", "Levan,", "Taia,", "Tamar,", "Lia,", "Irakli,", "Toma,", "Nana"]
## 3 - for num_names_str, you just needed to save the string you did in the puts statement on line 34:
##     - num_names_str = "There are #{num_names.length} names in this array."
##     - puts num_names_str
## 6 - to answer your question: When you use delete_at, names will be updated so that it no longer has the item that was at index 2.
##     - You call delete_at twice: line 62 and line 63. 
##     - What this does is delete the 2nd item from names (line 62) which leaves names with 13 items
##     - Then line 63 delete another item from names and you are left with 12 items
## - good job!






