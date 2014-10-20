#### Class 3 Notes

###
### Topics
#
## The Ruby Environment
#
# Configure your text editor
# Indentions

  puts "This example shows good indentation practices."

  colors = ['red', 'white', 'blue']

  colors.each do |color|
    puts "My favorite color is #{color}."
  end
  
# Comments (self-referential example ;))
# Variable names

  puts "This is an example of the snake case naming convention."

# Class names

  puts "This is an example of the CamelCase naming convention."

# Errors
# Ruby API

  url1 = "http://www.ruby-doc.org/core-2.1.3/"

# IRB
# Running a Ruby script file
#
## Variables and Strings
#
# What are variables?
# Text processing: storing, manipulating text
# Strings and the String class
# Creating strings

  str1 = "A new string!"
  str2 = String.new("Another new string!") 
 
# Single quotes

  str3 = 'A string.'

# Escaping special characters

  str4 = 'A cat\'s string.'

# Double quotes

  str5 = "A string."
  
# Tabs and new lines

  str6 = "A string with \n new line and \t a tab."

# Interpolation

  fav_color = "blue"
  puts "My favorite color is #{fav_color}."

# %q and %Q

  str7 = %q{
    Peter Piper picked a peck of pickled peppers.
    A peck of pickled peppers Peter Piper picked.
    If Peter Piper picked a peck of pickled peppers,
    Where's the peck of pickled peppers that Peter Piper picked?
  }

  puts str7

  fname = "John"
  lname = "Smith"

  str8 = %Q{
    #{fname} #{lname} picked a peck of pickled peppers.
    A peck of pickled peppers #{fname} #{lname} picked.
    If #{fname} #{lname} picked a peck of pickled peppers,
    Where's the peck of pickled peppers that #{fname} #{lname} picked?
  }

  puts str8

# The here document
  str9 = <<-EOS
    Peter Piper picked a peck of pickled peppers.
    A peck of pickled peppers Peter Piper picked.
    If Peter Piper picked a peck of pickled peppers,
    Where's the peck of pickled peppers that Peter Piper picked?
  EOS

  puts str9

# The String API
#
  url2 = "http://www.ruby-doc.org/core-2.1.3/String.html"
#
## Basic String Methods

  str10 = "whatchamacallit"
  puts str10.reverse
  puts str10.length
  puts 40.to_s.reverse
  
