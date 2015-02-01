# Homework Assignment #8
# Using hashes and reviewing what came before
# 
# For this homework assignment we'll use the CSV file: makler_november.csv 
# which lists details about property for sale and rent in november from Makler.
# This file can be found in the directory datafiles in your repository

# - if you need help with hashes, try here: http://www.ruby-doc.org/core-2.1.3/Hash.html
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
# 1. Load the Makler CSV file and assign it to the variable data. Be sure to indicate that your
# data has a header when you load it.

puts "------------------"
puts "----- Step 1 -----"
puts "------------------"

require 'csv'

data=CSV.read('../../../../notes/makler_november.csv', headers: true)

###
# 2. Create a new variable called heating and assign to it all the posts that have central heating
# and is an apartment.

puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

heating=data.select{|rec| rec[2]=='apartment' && !rec[4].nil? && rec[4].downcase.include?("heating system: central")}
puts"there are #{heating.length} apartments with central heating"

###
# 3. If the posts in the heating variable has three or more rooms, assign the posts from question
# to the variable big. If the posts has fewer than three rooms, assign them to the variable small.

puts "------------------"
puts "----- Step 3 -----"
puts "------------------"

big=[]
small=[]

heating.each do |post|
  if post[24].to_i >=3
    big << post
  else
    small << post
  end
  end

puts "there are #{big.length} apartments with 3 or more rooms"
puts "there are #{small.length} apartments with less than 3 rooms"

###
# 4. For each variable big and small, what are the 5 most frequently used words used in the
# column additional_info? Remember, you must clean the string first, then normalize it, before
# you count. Refer to the notes from class if you can't remember how to do this. 

puts "------------------"
puts "----- Step 4 -----"
puts "------------------"
puts "----------------------------------------------------------------"
puts "Most frequently used words in 'additional info' in big aparments"
puts "----------------------------------------------------------------"
words_big = String.new

big.each do |rec|
  words_big += rec['additional_info'] unless rec['additional_info'].nil?
  words_big += " "
end

words_big_cleaned = words_big.gsub(".", " ").gsub(",", " ").gsub("\"", " ").gsub(":", " ").gsub(";", " ").gsub("?", " ").gsub(/\s+/, " ").downcase
word_array = words_big_cleaned.split(" ")
word_count = Hash.new(0)
word_array.each do |word|
    word_count[word] += 1
end

word_count_sorted = Hash[word_count.sort_by { |k, v| -v }[0..4]]
word_count_sorted.each do |k, v|
  puts "'#{k}' - used #{v} times"
end


puts "------------------------------------------------------------------"
puts "Most frequently used words in 'additional info' in small aparments"
puts "------------------------------------------------------------------"
words_small = String.new

small.each do |rec|
  words_small += rec['additional_info'] unless rec['additional_info'].nil?
  words_small += " "
end

words_small_cleaned = words_small.gsub(".", " ").gsub(",", " ").gsub("\"", " ").gsub(":", " ").gsub(";", " ").gsub("?", " ").gsub(/\s+/, " ").downcase
word_array = words_small_cleaned.split(" ")
word_count = Hash.new(0)
word_array.each do |word|
    word_count[word] += 1
end

word_count_sorted = Hash[word_count.sort_by { |k, v| -v }[0..4]]
word_count_sorted.each do |k, v|
  puts "'#{k}' - used #{v} times"
end

