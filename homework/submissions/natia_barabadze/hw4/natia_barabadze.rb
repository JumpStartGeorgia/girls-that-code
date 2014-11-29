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


sab_apts_for_rent = apts_for_rent.select{|rows| rows[15] == 'Saburtalo' }
puts "There are #{sab_apts_for_rent.length} apartments for rent in Saburtalo1"


puts "------------------"
puts "----- Step 4 -----"
puts "------------------"


tbilisi_4_rm_house_for_sale = rows.select{|rows| rows[1] == 'for sale' && rows[19].to_i >= 4 && rows[13] == 'Tbilisi'}
puts "There are #{tbilisi_4_rm_house_for_sale.length} apartments for sale with at least 4 rooms in Tbilisi"


puts "------------------"
puts "----- Step 5 -----"
puts "------------------"

# 5. Create a variable called 'office_sale_100sqm' and set it equal to the list of offices for sale in Old Tbilisi or Vake-Saburtalo with 100-200sqm of space. Write a senetence indicating how many there are.
# - this is a little tricky for you have to use an OR statement (||) for the location
# - put () around the OR statement to make sure you are properly testing for what you want
#  - similar to the order of operations for math that we talked about in class4

office_sale_100sqm = rows.select{|rows| rows[2] == 'office' && rows[9].to_i >= 100 && rows[9].to_i <= 200 &&(rows[14] == 'Old Tbilisi' || rows[14] == 'Vake-Saburtalo')}
puts "There are #{office_sale_100sqm.length} offices for sale in Old Tbilisi or in Saburtalo with 100-200sqm of space."


puts "------------------"
puts "----- Step 6 -----"
puts "------BONUS-------"
puts "------------------"

# 6. BONUS
# Using the variable from #5, sort the variable by the sale price and write out a sentence indicating the least and most expensive office space for sale.
# - You want to use sort_by for this and the ruby array documentation on sort_by is bad, so use this page instead: 

#### office_sale_100sqm.sort_by {|rows| rows [8]}


########################
## Feedback from Jason
# #1 - I changed your CSV.read statement so that I could read the file. You had the path to the file on your machine hard-coded. Instead you could have used the dots like I did.
# #2 - You were supposed to search for apartments for rent, instead you did a search for everything that is for rent
# #3 - You want to search for Saburtalo in column 20, not 15.
# #4 - Tbilisi is in column 18, you forgot to search for private houses and the rooms is in column 24
# #5 - You forgot to search for 'for sale' and the places are in column 19

# your code is good, you just miscounted the columns or forgot a search parameter.  good try!