puts ""
puts "Homework 4"

puts ""
puts "Step 1."
puts ""

require 'csv'

row = CSV.read('/Users/sarafarhoudi/Documents/Rubyscript/girls-that-code/notes/makler_november.csv', :headers => true)

puts "There are #{row.length} items in rows."

puts ""
puts "Step 2."
puts ""

apt_for_rent = row.select{|row| row[1] == 'for rent' && row[2] == 'apartment'}

puts "There are #{apt_for_rent.length} apartments for rent."


puts ""
puts "Step 3."
puts ""


sab_apt_for_rent = row.select{|row| row[1] == 'for rent' && row[2] == 'apartments' && row[20] == 'Saburtalo'}

puts "There are #{sab_apt_for_rent.length} apartments for rent in Saburtalo."

puts ""
puts "Step 4."
puts ""

tbilisi_4_rm_house_for_sale = row.select{|row| row[1] == 'for sale' && row[2] == 'private house' && row[18] == 'Tbilisi' && row[24].to_i >= 4}

puts "There are #{tbilisi_4_rm_house_for_sale.length} homes (private houses) for sale with at least 4 rooms in Tbilisi."

puts ""

office_sale_100sqm = row.select{|row| row[1] == 'for sale' && row[2] == 'office' && row[9].to_i >= 100 && row[9].to_i <= 200 && (row[19] == 'Old Tbilisi' || row[19] == 'Vake-Saburtalo')}

puts "There are #{office_sale_100sqm.length} offices for sale in Old Tbilisi or Vake-Saburtalo with 100-200sqm of space."

puts ""


sorted_office_saleprice_100sqm = office_sale_100sqm.sort_by{|row| row[7].to_i}
puts "The least expensive office costs #{sorted_office_saleprice_100sqm.first[7]} dollars."
puts "The most expensive office costs #{sorted_office_saleprice_100sqm.last[7]} dollars."
puts ""



##############################
## feedback from jason
## #1 - Small detail, but hw asked for variable name of rows, not row. It makes more sense to use the plural form since there are many items.
## #3 - You misspelled 'apartments' in the test, it is actually 'apartment' and that is why you got 0 results.
##    - You did it correctly, but here is another way: instead of using row.select with all of the statements, you could have done apt_for_rent.select and just added in the Saburtalo test.
## Good job!
