#require 'csv'
require 'csv'
puts "------------------"
puts "----- Step 1 -----"
puts "------------------"

rows = CSV.read("../../../../notes/makler_november.csv", headers:true)
#rows = CSV.read('../../../../notes/makler_november.csv',headers: true)
# When i try to indicate file path like ../../../../notes/makler_november.csv ruby gives me error no such file or directory:(
puts "There are #{rows.length} rows in csv file"

puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

apts_for_rent=rows.select{|record| record[1] == 'for rent' && record[2] == 'apartment'}
puts "There are #{apts_for_rent.length} of apartments for rent"

puts "------------------"
puts "----- Step 3 -----"
puts "------------------"

sab_apts_for_rent=rows.select{|record| record[1] == 'for rent' && record[2] == 'apartment' && record[20]=='Saburtalo'}
puts "There are #{sab_apts_for_rent.length} of apartments for rent in Saburtalo"

puts "------------------"
puts "----- Step 4 -----"
puts "------------------"

tbilisi_4_rm_house_for_sale=rows.select{|record| record[1] == 'for sale' && record[2] == 'private house' && record[18]='Tbilisi' && record[24].to_i>=4}
puts "There are #{tbilisi_4_rm_house_for_sale.length} of private houses for sale in tbilisi with at least 4 rooms"


puts "------------------"
puts "----- Step 5 -----"
puts "------------------"

office_sale_100sqm=rows.select{|record| record[1] == 'for sale' && record[2] == 'office' && (record[19]=='Old Tbilisi' || record[19]=='Vake-Saburtalo') && record[9].to_i>=100 && record[9].to_i<=200}
puts "There are #{office_sale_100sqm.length} of offices for sale with space 100-200 sqm in Vake-Saburtalo and Old Tbilisi"

puts "------------------"
puts "----- Step 6 -----"
puts "------------------"

office_sale_100sqm.sort_by! {|i| i[7]}
puts "Most expensive office costs #{office_sale_100sqm[0][7]} and least expensive office costs #{office_sale_100sqm[office_sale_100sqm.length-1][7]}"
