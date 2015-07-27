
puts ""
puts "------Step 1----"
puts ""

require 'csv'

# data = CSV.read('makler_november.csv', headers: true)
data = CSV.read('../../../../notes/makler_november.csv', headers:true)

puts data.length


puts ""
puts "------Step 2----"
puts ""

heating = data.select {|record| record[2]=='apartment' && record[4]!=nil && record[4].downcase.include?("heating system: central")}

puts "There are #{heating.length} apartments with central heating systems."



puts ""
puts "------Step 3----"
puts ""

big=[]
small=[]

heating.each do |room|
	if room[24].to_i >=3
		big << room
	else
		small << room
	end
end

puts "There are #{big.length} apartments with 3 or more rooms."
puts ""
puts "There are #{small.length} apartments with less than 3 rooms."

puts ""
puts "----- Step 4 -----"
puts ""
puts ""
puts "Most frequently used words in 'additional info' in big aparments"
puts ""

# "First step: Get the Column, convert it to a string (using .join)"
#" Clean the string (using.gsubs)"
# "Create array of words (using .split(" "")
# "Count the words by creating a hash and looping through the words and add 1 to the default 0"
# Sort them based on value, biggest to lowest (-v)"
# Count the first five using word_count_sorted[0..4].each do |

words = big.map {|column| column[4]}.join

words_cleaned = words.gsub(".", " ").gsub("'", " ").gsub("\"", " ").gsub(":", " ").gsub(";", " ").gsub("?", " ").gsub(/\s+/, " ").gsub("#", " ").gsub("$", " ").gsub("&", " ").downcase

words_array = words_cleaned.split(",")


word_count = Hash.new(0)

words_array.each do |word|
    word_count[word] += 1

end





word_count_sorted = word_count.sort_by { |k, v| -v }

word_count_sorted[0..4].each do |k, v|
  puts "word: #{k}, number: #{v}"
end

puts ""

puts "Most frequently used words in 'additional info' in small aparments"
puts ""

words = small.map {|column| column[4]}.join

words_cleaned = words.gsub(".", " ").gsub("'", " ").gsub("\"", " ").gsub(":", " ").gsub(";", " ").gsub("?", " ").gsub(/\s+/, " ").gsub("#", " ").gsub("$", " ").gsub("&", " ").downcase

words_array = words_cleaned.split(",")


word_count = Hash.new(0)

words_array.each do |word|
    word_count[word] += 1

end



word_count_sorted = word_count.sort_by { |k, v| -v }

word_count_sorted[0..4].each do |k, v|
  puts "word: #{k}, number: #{v}"
end


###################################
## feedback from jason:
# good job!