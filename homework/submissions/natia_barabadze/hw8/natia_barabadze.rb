####homework #8

puts "------------------"
puts "----- Step 1 -----"
puts "------------------"

require 'csv'

file = "C:/Users/KUDA/Desktop/GTC/girls-that-code/datafiles/makler_november.csv"
data = CSV.open(file, headers: true).read
puts data.length



puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

heating = data.select {|record| record[2]=='apartment' && record[4]!=nil && record[4].downcase.include?("heating system: central") }
puts "There are #{heating.length} apartments with central heating system."
 
 
 
 
puts "------------------"
puts "----- Step 3 -----"
puts "------------------"

big=Array.new
small=Array.new

heating.each do |datum|
if datum["rooms"].to_i>=3 then
  big<<datum
else
  small<<datum
end
 
end

puts "There are #{big.length} big and #{small.length} small apartments."


puts "------------------"
puts "----- Step 4 -----"
puts "------------------"


###
# 4. For each variable big and small, what are the 5 most frequently used words used in the
# column additional_info? Remember, you must clean the string first, then normalize it, before
# you count. Refer to the notes from class if you can't remember how to do this. 

words = String.new


data.each do |datum|
  words += datum['additional_info'] unless datum['additional_info'].nil?
  words += " "
end

words_cleaned = words.gsub(".", " ").gsub(",", " ").gsub("'", " ").gsub("\"", " ").gsub(":", " ").gsub(";", " ").gsub("?", " ").gsub(/\s+/, " ").gsub("#", " ").gsub("$", " ").gsub("&", " ").downcase

words_array = words_cleaned.split(" ")

word_count = Hash.new(0)

words_array.each do |word|
    word_count[word] += 1
end

word_count_sorted = word_count.sort_by { |k, v| -v }

word_count_sorted.each do |k, v|
  
end

puts word_count.sort[0..4]

#### I'm in trouble, can't sort. It gets me some strange additional info.''