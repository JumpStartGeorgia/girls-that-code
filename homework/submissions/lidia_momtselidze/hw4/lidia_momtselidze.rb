<<<<<<< HEAD
#require 'csv'
require 'csv'
=======
require 'csv'
#require 'CSV'
>>>>>>> ca1db03166c6c4c09be214bd24efedce55ce5a8e
puts "------------------"
puts "----- Step 1 -----"
puts "------------------"

<<<<<<< HEAD
rows = CSV.read("../../../../notes/makler_november.csv", headers:true)
#rows = CSV.read('../../../../notes/makler_november.csv',headers: true)
=======

rows = CSV.read("../../../../notes/makler_november.csv", headers:true)
#rows = CSV.read('D:/Ruby/girls-that-code/notes/makler_november.csv',headers: true)
>>>>>>> ca1db03166c6c4c09be214bd24efedce55ce5a8e
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


########################
## Feedback from Jason
# #1 - I changed your CSV.read statement so that I could read the file. You had the path to the file on your machine hard-coded. Instead you could have used the dots like I did.
#    - I had to change your require 'CSV' to require 'csv' to make the file work
# #4 - In your tests, one of the statements is using '=' instead of '=='
# #6 - good job on figuring out how to use sort_by!
#    - remember you want to sort by numbers but CSV.read converted everything to strings. If you do the sort again telling ruby to sort numbers, you will get different answers
#    - now that the array is sorted, you could have used office_sale_100sqm.first and office_sale_100sqm.last to get the least and most expensive
# good job!
