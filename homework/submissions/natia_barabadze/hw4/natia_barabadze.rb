####homework #4

puts "------------------"
puts "----- Step 1 -----"
puts "------------------"

require 'csv'
rows = CSV.read("../../../../notes/makler_november.csv")
#rows = CSV.read('makler_november.csv')
puts "There are #{rows.length} items in the row."

rows = CSV.read("../../../../notes/makler_november.csv", headers:true)
#rows = CSV.read('makler_november.csv', headers: true)
puts "With CSV.read(headers: true), there are #{rows.length} items in the row."



puts "------------------"
puts "----- Step 2 -----"
puts "------------------"


apts_for_rent = rows.select{|rows| rows[1] == 'for rent'}
puts "There are #{apts_for_rent.length} apartments for rent."


puts "------------------"
puts "----- Step 3 -----"
puts "------------------"


sab_apts_for_rent = apts_for_rent.select{|rows| rows[20] == 'Saburtalo' }
puts "There are #{sab_apts_for_rent.length} apartments for rent in Saburtalo."


puts "------------------"
puts "----- Step 4 -----"
puts "------------------"


tbilisi_4_rm_house_for_sale = rows.select{|rows| rows[1] == 'for sale' && rows[19].to_i >= 4 && rows[18] == 'Tbilisi'}
puts "There are #{tbilisi_4_rm_house_for_sale.length} apartments for sale with at least 4 rooms in Tbilisi."


puts "------------------"
puts "----- Step 5 -----"
puts "------------------"


office_sale_100sqm = rows.select{|rows| rows[2] == 'office' && rows[19].to_i >= 100 && rows[19].to_i <= 200 &&(rows[14] == 'Old Tbilisi' || rows[14] == 'Vake-Saburtalo')}
puts "There are #{office_sale_100sqm.length} offices for sale in Old Tbilisi or in Saburtalo with 100-200sqm of space."




<<<<<<< HEAD



=======
#### office_sale_100sqm.sort_by {|rows| rows [8]}


########################
## Feedback from Jason
# #1 - I changed your CSV.read statement so that I could read the file. You had the path to the file on your machine hard-coded. Instead you could have used the dots like I did.
# #2 - You were supposed to search for apartments for rent, instead you did a search for everything that is for rent
# #3 - You want to search for Saburtalo in column 20, not 15.
# #4 - Tbilisi is in column 18, you forgot to search for private houses and the rooms is in column 24
# #5 - You forgot to search for 'for sale' and the places are in column 19

# your code is good, you just miscounted the columns or forgot a search parameter.  good try!
>>>>>>> ca1db03166c6c4c09be214bd24efedce55ce5a8e
