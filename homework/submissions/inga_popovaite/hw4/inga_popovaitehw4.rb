puts "step 1"
puts "Create a variable called 'rows' and load the data from the csv file into it. Write a sentence indicating how many items are in rows"
puts ""
require 'csv'
rows = CSV.read("/home/inga/Documents/girlsthatcode/girls-that-code/notes/makler_november.csv", headers:true)
puts "there are #{rows.length} items in the dataset named 'rows' "
puts ""
puts "step 2"
puts " Create a variable called 'apts_for_rent' and set it equal to list of apartments that are for rent. Write a senetence indicating how many there are"
puts ""
apts_for_rent = rows.select{|row| row[1] == 'for rent' && row[2] == "apartment"} 
puts "there are #{apts_for_rent.length} apartments for rent" 
puts ""
puts "step 3"
puts "Create a variable called 'sab_apts_for_rent' and set it equal to list of apartments that are for rent in Saburtalo. Write a senetence indicating how many there are"
puts ""
sab_apts_for_rent = apts_for_rent.select {|row| row[20] == 'Saburtalo'}
puts "there are #{sab_apts_for_rent.length} apartments for rent in Saburtalo"
puts ""
puts "step 4"
puts "Create a variable called 'tbilisi_4_rm_house_for_sale' and set it equal to the list of houses for sale with at least 4 rooms in Tbilisi. Write a senetence indicating how many there are"
tbilisi_4_rm_house_for_sale = rows.select {|row| row[1] == 'for sale' && row[2] == 'house' && row[18] == 'Tbilisi' && row[24].to_i >= 4}
puts "there are #{tbilisi_4_rm_house_for_sale.length} houses for sale in Tbilisi which have at least 4 rooms"
puts ""
puts "step 5"
puts "Create a variable called 'office_sale_100sqm' and set it equal to the list of offices for sale in Old Tbilisi or Vake-Saburtalo with 100-200sqm of space. Write a sentence indicating how many there are"
puts ""
office_sale_100sqm = rows.select {|row| row [1] == 'for sale' && row [2] == 'office' && (row[19] =='Vake-Saburtalo' || row[19] == '
Old Tbilisi') && (row[9].to_i >=100 && row[9].to_i <= 200)}
puts "There are #{office_sale_100sqm.length} 100-200 sqm offices for sale in Vake-Saburtalo or Old Tbilisi"
puts ""

