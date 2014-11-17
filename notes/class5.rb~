#### Class 5 Notes
####
#### Topics: 
#### - Arrays

#### The Array API
# http://ruby-doc.org/core-2.1.3/Array.html

#### Create an array
array1 = []
array1 = ["Nino", "Mariam", "Tamar", "Maka"]
puts array1
print array1

#### Another way to create an array
array2 = Array.new

#### Create an array from a string
str1 = <<-EOS
  Peter Piper picked a peck of pickled peppers.
  A peck of pickled peppers Peter Piper picked.
  If Peter Piper picked a peck of pickled peppers,
  Where's the peck of pickled peppers that Peter Piper picked?
EOS

str2 = str1.split("\n") # This is the same as: str2 = str1.lines
str3 = str2.reverse
str4 = str3.join
puts str4

#### Use %w to save yourself time with creating array of strings
str5 = %w(Nino Mariam Tamar Maka)
puts str5

#### Here are some simple methods for arrays
#
# How many elements are in the array
puts str5.length # This is the same as: str5.size

# What is the first element in the array
puts str5.first

# What is the last element in the array
puts str5.last

# Reverse the order of the elements in the array
puts str5.reverse

# Sort an array
puts str5.sort
str6 = [5, 2, 3, 7, 4, 6, 1]
puts str6.sort

#### Get a specific element in an array by the index
#
# Arrays have an index so you can find an element.
# The first element starts with an index number of 0
puts str5[0]
puts str5[3]

#### Add a new element to the end of an existing array
str5 << "Ia" # This is the same as: str5.push("Ia")
puts str5

#### Insert a new element to an existing array at a specific place/index
#
# Insert a new element at index place 2
str7 = str5.insert(2, "Ketevan")
puts str7

# Insert a new element at index place 0
str8 str5.insert(0, "Tinatin")
puts str8

#### An example of a nested array 

rows = [["John", "Doe", 33], ["Jane", "Doe", 35], ["Alex", "Trebech", 58]]
puts rows[2][1] # Trebech
