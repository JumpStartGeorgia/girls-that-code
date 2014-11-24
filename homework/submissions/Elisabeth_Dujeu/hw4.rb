rows = CSV.read('makler_november.csv')
puts "CSV.read(headers: true) = #{{rows.length}}"
rows = [[row1 content]], [[row2 content]], etc.]
puts "-----------"
puts " step2 "
puts "-----------"
apts_for_rent ="rows.select{|row| row[1] == 'for rent' && row[2] == 'apartement'}"
puts "there are #{apt_for_rent.length} apartements for rent! "
puts "-----------"
puts " step 3 "
puts "-----------"
sab_apts_for_rent = "rows.select{|row| row[1] == 'for rent' && row.select{|row| row[2] == 'apartement' && row.select{|row| row[19]}"
puts " there are #{sab_apts_for_rent.length} apartements for rent in Saburtalo! "
puts "-----------"
puts " step 4 "
puts "-----------"
tbilisi_4_rm_house_for_sale = "tbilisi_4_rm_house_for_sale.select{|row| row|[10].to_i < 4 && row[10].to_i >= 4}"
puts "----------"
puts " step 5 "
puts "----------"
office_sale_100sqm = "(office_sale_100sqm.select{|row| row[1]} == 'for sale' && row.select{|row| row|[10].to_i = 100}) && (old_tbilisi.select{|row| row[19]}) || (Vvake-saburtalo.select{|row| row[19]})"
puts "----------"
puts " bonus "
puts "----------"
puts "I really don't know"

########################
## Feedback from Jason
# - all homework files should have a file extension of .rb
# - did you try runing the file by using: ruby hw4?  You should always run the file to make sure it works.
#
# #1 - you need the require statement at the top of the file in order for the CSV to load the data
#    - in line 2, you have #{{rows.length}} - there should only be one set of {} - #{rows.length}
#    - in line 3, you have [[row1 content]], [[row2 content]], etc.] - there should only be one set of [] - [ [row1 content], [row2 content], etc.]
# #3 - you onle need rows.select once and all of the tests are inside of it: rows.select{|row| row[1] == 'for rent' && row[2] == 'apartment' && ...}
# #4 - you are trying to use tbilisi_4_rm_house_for_sale.select and this will fail because tbilisi_4_rm_house_for_sale does not exist yet. Instead, you should use apts_for_rent.select
# #5 - same problem as #4 - you should use rows.select and like #3, you only need one select statement
#    - also, you should set office_sale_100sqm = rows.select, not office_sale_100sqm = "rows.select"