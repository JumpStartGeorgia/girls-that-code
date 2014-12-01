puts "------------------"
puts "----- Step 1 -----"
puts "------------------"

require 'csv'

rows=CSV.read('../../../../notes/makler_november.csv', headers: true)
puts "there are #{rows.length} items in a row"


puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

apts_for_rent=rows.select{|record| record[1]=='for rent' && record[2]=='apartment'}
puts "there are #{apts_for_rent.length} apartments for rent"


puts "------------------"
puts "----- Step 3 -----"
puts "------------------"

sab_apts_for_rent=apts_for_rent.select{|record| record[20]=='Saburtalo'}
puts "there are #{sab_apts_for_rent.length} for rent in Saburtalo"

puts "------------------"
puts "----- Step 4 -----"
puts "------------------"

tbilisi_4_rm_house_for_sale=rows.select{|record| record[1]=='for sale' && record[24].to_i>=4 && record[18]=='Tbilisi'}
puts "there are #{tbilisi_4_rm_house_for_sale.length} houses for sale with at least 4 rooms in Tbilisi "

puts "------------------"
puts "----- Step 5 -----"
puts "------------------"

office_sale_100sqm=rows.select{|record| record[1]=='for sale' && record[2]=='office' && (record[19]=='Old Tbilisi' || record[19]=='Vake-Saburtalo') && record[9].to_i>=100 && record[9].to_i<=200 }
puts "there are #{office_sale_100sqm.length} offices for sale in Old Tbilisi or Saburtalo with 100-200sqm of space"

puts "------------------"
puts "----- Step 6 -----"
puts "------------------"


office_sale_100sqm.sort_by! {|record| record[7].to_i}.reverse
puts "the cheapest office for sale costs #{office_sale_100sqm[0][7]} and the most expensive one costs #{office_sale_100sqm[-1][7]}"

