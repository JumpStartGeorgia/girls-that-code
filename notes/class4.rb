#### Class 4 Notes
####
#### Topics: 
#### - Continuing with variables: strings and numbers
#### - Basic operations on variables: methods to manipulate variables and performing calculations
#### - Intro to arrays (lists)

########################
#### Clearing the terminal screen
#### Windows: clr
#### Mac/Linux: clear


########################
#### How to help split your code output when running the file
puts ""
puts "---------------------------------"
puts ""


########################
puts ""
puts "---------------------------------"
puts "---- STRING METHODS ----"
puts "---------------------------------"
puts ""


#### Ruby string documentation: http://www.ruby-doc.org/core-2.1.3/String.html


str = "This is a sample sentence with UPPER and lower case."
puts "str = #{str}"
#### - Change case
puts ""
puts "---- Changing String Case ----"
puts "* downcase = #{str.downcase}"
puts "* upcase = #{str.upcase}"
puts "* swapcase = #{str.swapcase}"

#### - Adding to the string
puts ""
puts "---- Adding to the string ----"
to_add = " with added text "
puts "* this is the text we are going to add: #{to_add}"
puts "* add to the end with str + to_add = #{str + to_add}"
#### NOTE: to_add was added to the end, but the value of str was not changed
#### so let's change it....

#### -- insert
#### insert allows you to insert text at a specific location, called index, in the string
#### IMPORTANT: the index always starts at 0
puts ""
puts "---- Insert to string ----"
puts "* insert text at 0 = #{str.insert(0, to_add)}"
puts "* the string has now changed, str = #{str}"
# reset the str variable
str = "This is a sample sentence with UPPER and lower case."
puts "* insert text at 25 (after word sentence) = #{str.insert(25, to_add)}"
# reset the str variable
str = "This is a sample sentence with UPPER and lower case."
# you can add to the end of the string by using a negative index value, where -1 is the end of the string
puts "* insert text at -6 (before case) = #{str.insert(-6, to_add)}"

#### - !
#### ! tells ruby to run the method and then save the new value into the variable
puts ""
puts "---- ! and strings ----"
# reset the str variable
str = "This is a sample sentence with UPPER and lower case."
str.downcase!
puts "* after str.downcase!, str = #{str}"
str.upcase!
puts "* after str.upcase!, str = #{str}"


# ########################
# ########################
# ## Now, a quick text editor lesson:
# ## Select all of the text above this comment block and comment it out
# ## Now, select all of the text after this comment block until you see the word STOP and uncomment it
# ########################
# ########################


# ########################
# puts ""
# puts ""
# puts "---------------------------------"
# puts "---- NUMBERS ----"
# puts "---------------------------------"
# puts ""

# #### Ruby integer documentation: http://www.ruby-doc.org/core-2.1.3/Integer.html
# #### Ruby float documentation: http://www.ruby-doc.org/core-2.1.3/Float.html

# #### These are numbers: 3, 5, 100000, 10.04, 234.23423423234
# #### But to Ruby, these are two different types of numbers

# #### - Integers
# puts ""
# puts "---- Integers ----"
# a = 5
# b = 6
# c = 8
# puts "a = #{a}; b = #{b}; c = #{c}"
# puts "a + b = #{a + b}"
# puts "b * c = #{b * c}"
# puts "a + b * c = #{a + b * c}"
# puts "(a + b) * c = #{(a + b) * c}"
# puts "a / b = #{a / b}"
# puts "c / b = #{c / b}"
# #### when you do divide integers, you get back an integer!

# #### - Floats
# puts ""
# puts "---- Floats ----"
# x = 5.2
# y = 6.9
# z = 8.3
# puts "x = #{x}; y = #{y}; z = #{z}"
# puts "x + y = #{x + y}"
# puts "x / y = #{x / y}"
# puts "z / y = #{z / y}"

# # in order to get the remainder of division, at least one number must be float!
# puts "a / y = #{a / y}"

# #### - round the float
# puts "x + y, rounded to 0 decimals = #{(x + y).round}"
# puts "y * z, roudned to 2 decimals = #{(y * z).round(2)}"

# puts ""
# puts "---- Putting it all together ----"
# q = a + b
# w = (x / a).round(1)
# e = q - w
# puts "q = a + b: #{q}"
# puts "w = (x / a).round(1): #{w}"
# puts "e = q - w: #{e}"



########################
##### STOP UNCOMMENTING HERE
########################

# ########################
# ########################
# ## Now, Select all of the text above this comment block and comment it out
# ## Now, select all of the text after this comment block until you see the word STOP and uncomment it
# ########################
# ########################


# ########################
# puts ""
# puts ""
# puts "---------------------------------"
# puts "---- CONVERTING ----"
# puts "---------------------------------"
# puts ""

# #### You can convert a string to an integer or float and vice-versa!
# a = "234"
# b = 234
# c = 234.4
# d = "test"
# e = "test5test"
# f = "5test5test"

# #### You can have ruby tell you wich type the variable is using '.class'
# puts "a = #{a.class}; b = #{b.class}; c = #{c.class}; d = #{d.class}; e = #{e.class}; f = #{f.class}"
# puts "a = #{a}; b = #{b}; c = #{c}, d = #{d}; e = #{e}; f = #{f}"

# puts ""
# puts "---- Convert to String using .to_s ----"
# puts "a = #{a.to_s}; b = #{b.to_s}; c = #{c.to_s}; d = #{d.to_s}; e = #{e.to_s}; f = #{f.to_s}"
# #### when you use #{}, it automatically converts whatever is in it to a string so the above .to_s is not really necessary

# puts ""
# puts "---- Convert to Integer using .to_i ----"
# puts "a = #{a.to_i}; b = #{b.to_i}; c = #{c.to_i}; d = #{d.to_i}; e = #{e.to_i}; f = #{f.to_i}"

# puts ""
# puts "---- Convert to Float using .to_f ----"
# puts "a = #{a.to_f}; b = #{b.to_f}; c = #{c.to_f}; d = #{d.to_f}; e = #{e.to_f}; f = #{f.to_f}"


########################
##### STOP UNCOMMENTING HERE
########################

# ########################
# ########################
# ## Now, Select all of the text above this comment block and comment it out
# ## Now, select all of the text after this comment block until you see the word STOP and uncomment it
# ########################
# ########################

# ########################
# puts ""
# puts ""
# puts "---------------------------------"
# puts "---- ARRAYS ----"
# puts "---------------------------------"
# puts ""

# #### Ruby Array documentation: http://www.ruby-doc.org/core-2.1.3/Array.html

# #### Arrays are lists or collections of data. 
# #### The data can be any string, integer, float, etc. 
# #### If you look at a spreadsheet, a row in a spreadsheet is the same thing as an array.
# #### And just like spreadshets, the array can contain just one type of data (i.e., only strings), or it can be a mix (i.e, strings and integers)
# #### Arrays are created using [] and with a ',' between each item
# names = ['Nino', 'Tamar', 'Mariam', 'Ana']
# puts "* names array = #{names}"

# puts "* this is what an array looks like if you puts it by itself:"
# puts names

# #### you can find out how many items are in an array using .length
# puts "* there are #{names.length} names"

# #### you can sort the array using .sort
# puts "* the sorted array = #{names.sort}"
