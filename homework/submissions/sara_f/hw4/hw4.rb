puts ""
puts "Homework 4"

puts ""
puts "Step 1."
puts ""
puts ""

require 'csv'

rows = CSV.read('/Users/sarafarhoudi/Documents/Rubyscript/girls-that-code/notes/makler_november.csv', :headers => true)

puts "There are #{rows.length} items in rows."

puts ""
puts "Step 2."
puts ""

apt_for_rent = rows.select{|rows| rows[1] == 'for rent' && rows[2] == 'apartment'}

puts "There are #{apt_for_rent.length} apartments for rent!"


puts ""
puts "Step 3."
puts ""


sab_apt_for_rent = rows.select{|rows| rows[1] == 'for rent' && rows[2] == 'apartments' && rows[20] == 'Saburtalo'}

puts "There are #{sab_apt_for_rent.length} apartments for rent in Saburtalo!"

puts ""
puts "Step 4."
puts ""

tbilisi_4_rm_house_for_sale = rows.select{|rows| rows[1] == 'for sale' && rows[2] == 'private house' && rows[18] == 'Tbilisi' && rows[24].to_i >= 4}

puts "There are #{tbilisi_4_rm_house_for_sale.length} homes (private houses) for sale with at least 4 rooms in Tbilisi!"

puts ""

office_sale_100sqm = rows.select{|rows| rows[1] == 'for sale' && rows[2] == 'office' && rows[9].to_i >= 100 && rows[9].to_i <= 200 && (rows[19] == 'Old Tbilisi' || rows[19] == 'Vake-Saburtalo')}

puts "There are #{office_sale_100sqm.length} offices for sale in Old Tbilisi or Vake-Saburtalo with 100-200sqm of space!"

puts ""


sorted_office_saleprice_100sqm = office_sale_100sqm.sort_by{|rows| rows[7].to_i}

puts "The least expensive office space for sale is $ #{sorted_office_saleprice_100sqm.first[7]}!"
puts "The most expensive office space for sale is $ #{sorted_office_saleprice_100sqm.last[7]}!"
puts""



