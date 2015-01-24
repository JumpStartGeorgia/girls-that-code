puts "------------------"
puts "----- Step 1 -----"
puts "------------------"

require "csv"

file = "D:/Ruby/girls-that-code/homework/assignments/makler_november.csv"
data = CSV.open(file, headers: true).read
puts data.length
puts "------------------"
puts "----- Step 2 -----"
puts "------------------"

heating=data.select {|record| record[2]=='apartment' &&   record[4]!=nil && record[4].downcase.include?("heating system: central") }
puts heating.length

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

puts big.length
puts small.length

puts "------------------"
puts "----- Step 4-----"
puts "------------------"

#clean and save additional info to string
small_string =String.new
small.each do |datum|
small_string +=datum["additional_info"].gsub(".", " ").gsub(",", " ").gsub("\"", " ").gsub(":", " ").gsub(";", " ").gsub("?", " ").gsub(/\s+/, " ").downcase
end


big_string =String.new
big.each do |datum|
big_string +=datum["additional_info"].gsub(".", " ").gsub(",", " ").gsub("\"", " ").gsub(":", " ").gsub(";", " ").gsub("?", " ").gsub(/\s+/, " ").downcase
end

#split words to array

big_array = big_string.split(" ")
small_array = small_string.split(" ")
#count word itterations for big array

big_word_count = Hash.new(0)

big_array.each do |word|
    big_word_count[word] += 1
end

big_word_count_sorted=big_word_count.sort_by { |k, v| -v }

i=0
puts "Most frequent 5 words in Big apartments"
big_word_count_sorted.each do |k, v|
if i<=5 then
  puts "Key: #{k}, Value: #{v}"
  i+=1
end
end



#count word itterations for small array
small_word_count = Hash.new(0)

small_array.each do |word|
    small_word_count[word] += 1
end

small_word_count_sorted=small_word_count.sort_by { |k, v| -v }

i=0
puts "\nMost frequent 5 words in Small apartments"
small_word_count_sorted.each do |k, v|
if i<=5 then
  puts "Key: #{k}, Value: #{v}"
  i+=1
end
end




