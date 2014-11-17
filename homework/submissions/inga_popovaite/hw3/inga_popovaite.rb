puts "string of Georgian names"
puts ""
string_names = "Nino, Nana, Nunu, Keti, Giorgi, Dato, Vaxo, Maxo, Zura, Irakli, Mako, Bidzina"
puts "string of Georgian names #{string_names}"
puts ""
puts "converting to array"
names = string_names.split(",")
puts "string converted to array #{names}"
puts ""
puts "repeat the same without creating a string first"
names1  = %w[Nino, Nana, Nunu, Keti, Giorgi, Dato, Vaxo, Maxo, Zura, Irakli, Mako, Bidzina]
puts "1st array created without creating a string first is #{names1}"
puts ""
names2 = ["Nino", "Nana", "Nunu", "Keti", "Giorgi", "Dato", "Vaxo", "Maxo", "Zura", "Irakli", "Mako", "Bidzina"]
puts "2nd array created without creating a string first is #{names2}"
puts ""
puts "create a variable called
#    'num_names' and assign it to the number of names in the array. Insert it 
#    into a string that, in English, writes to the screen using a complete 
#    sentence the number of names you thought of. Assign that to a string
#    'num_names_str"
names.uniq!
num_names = names.count
num_names_str = "I have thought of #{num_names} Georgian names"
puts num_names_str
puts ""
puts "nested array with gender attributes"
demographics = %w[["Nino", "F"], ["Nana", "F"], ["Nunu", "F"], ["Keti", "F"], ["Giorgi", "M"], ["Dato", "M"], ["Vaxo", "M"], ["Maxo", "M"], ["Zura", "M"], ["Irakli", "M"], ["Mako", "F"], ["Bidzina", "M"]]
puts demographics
puts "the gender of the last person on the list is #{demographics[11][1]}"
names_index=names.index("Nino")
puts names_index
puts "#{names[0]} is my friend"
puts ""
puts "delete that element from array names"
 names.delete_at(0)
 puts names
