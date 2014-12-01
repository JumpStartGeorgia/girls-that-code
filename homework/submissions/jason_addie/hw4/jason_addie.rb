# Homework Assignment #4
# Searching for data in arrays:
# In general, this homework will have you pull in spreadsheet data collected from makler.ge (a real-estate site)
# and analyze this data by doing basic search functions just like you can on the website.
# I strongly suggest you refer to the notes from class 6 (notes/class6.rb) for help on using the CSV file and doing searches.


# - if you need help with arrays, try here: http://www.ruby-doc.org/core-2.1.3/Array.html
# - if you need help with loading the csv, try here: http://ruby-doc.org/stdlib-2.1.3/libdoc/csv/rdoc/CSV.html


##################
#### IMPORTANT: after each step, use a puts statement to write out the variable(s) that you just created, like:
#### puts "new_poem = #{new_poem}"
#### 
#### It will also be good to use a puts statement as a separator between each step, like:
#### puts "------------------"
#### puts "----- Step 3 -----"
#### puts "------------------"
####
#### These are not required, but it does help make it easier to look at your output and know what your are looking at.
##################



###
# 1. Create a variable called 'rows' and load the data from the csv file into it. Write a sentence indicating how many items are in rows.
# - The CSV file has a header row, so make sure that it is not in you 'rows' array
# - The CSV file is located in the notes folder and is called makler_november.csv. 
# - Let's keep it there for this assignment so we do not have multiple copies of this file for each person.
# - So, assuming your homework ruby file is in the homework/submissions/your_name/hw4 folder, 
#   please use the following for the path to the CSV file: '../../../../notes/makler_november.csv'
# - If you get the error 'uninitialized constant Object::CSV', make sure you remember to use 'require': 
#
puts "---"

require 'csv'

rows = CSV.read('../../../../notes/makler_november.csv', headers:true)

puts "there are #{rows.length} rows"


#
# 2. Create a variable called 'apts_for_rent' and set it equal to list of apartments that are for rent. Write a senetence indicating how many there are.
# - if you open the CSV in excel, you can see the data
# - the second column indicates if an item is for rent or for sale
# - the third column indicates what is for sale or for rent
# - if you get stuck or are lost on what to do, look at the class6 notes for help
#

puts "---"

apts_for_rent = rows.select{|x| x[1] == 'for rent' && x[2] == 'apartment'}
puts "there are #{apts_for_rent.length} apartments for rent"


#
# 3. Create a variable called 'sab_apts_for_rent' and set it equal to list of apartments that are for rent in Saburtalo. Write a senetence indicating how many there are.
# - use the column address_district to test for Saburtalo
#

puts "---"

sab_apts_for_rent = apts_for_rent.select{|x| x[20] == 'Saburtalo'}
puts "there are #{sab_apts_for_rent.length} apartments for rent in Saburtalo"

#
# 4. Create a variable called 'tbilisi_4_rm_house_for_sale' and set it equal to the list of houses for sale with at least 4 rooms in Tbilisi. Write a senetence indicating how many there are.
# - remember that CSV saves everything as a string, so you must tell ruby that the rooms value is an integer
#

puts "---"

tbilisi_4_rm_house_for_sale = rows.select{|x| x[1] == 'for sale' && x[2] == 'private house' && x[18] == 'Tbilisi' && x[24].to_i >= 4}
puts "there are #{tbilisi_4_rm_house_for_sale.length} tbilisi homes for sale with at least 4 rooms"

#
# 5. Create a variable called 'office_sale_100sqm' and set it equal to the list of offices for sale in Old Tbilisi or Vake-Saburtalo with 100-200sqm of space. Write a senetence indicating how many there are.
# - this is a little tricky for you have to use an OR statement (||) for the location
# - put () around the OR statement to make sure you are properly testing for what you want
#  - similar to the order of operations for math that we talked about in class4
#
puts "---"

office_rent_100sqm = rows.select{|x| x[1] == 'for sale' && x[2] == 'office' && 
                                  x[9].to_i >= 100 && x[9].to_i <= 200 && 
                                  (x[19] == 'Old Tbilisi' || x[19] == 'Vake-Saburtalo')}
puts "there are #{office_rent_100sqm.length} offices for sale with 100-200sqm of space and located in Old Tbilisi or Vake-Saburtalo"

#
# 6. BONUS
# Using the variable from #5, sort the variable by the sale price and write out a sentence indicating the least and most expensive office space for sale.
# - You want to use sort_by for this and the ruby array documentation on sort_by is bad, so use this page instead: 
#    http://brandon.dimcheff.com/2009/11/18/rubys-sort-vs-sort-by.html
### 

puts "---"

sorted_office_rent_100sqm = office_rent_100sqm.sort_by{|x| x[7].to_i}
puts "the least expensive office space for sale is $#{sorted_office_rent_100sqm.first[7]}"
puts "the most expensive office space for sale is $#{sorted_office_rent_100sqm.last[7]}"



### 
# If you get stuck, don't worry. Try to work through it step-by-step. 
# If you still can't figure out the solution, post a question in the 
# girls-that-code repo issues:
#
# https://github.com/JumpStartGeorgia/girls-that-code/issues
#
# When you are done, add your file to your the git repository.
# Then commit your changes with a relevant message.
# Pull any new changes from the git repo first.
# Then push your changes to the repo.
###





