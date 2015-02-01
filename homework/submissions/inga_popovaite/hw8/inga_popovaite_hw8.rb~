puts "step 1"
puts "----------------------------------------------------------"
puts "Load the Makler CSV file and assign it to the variable data"
puts "----------------------------------------------------------"
require 'csv'
data = CSV.read('/home/inga/Documents/girlsthatcode/girls-that-code/datafiles/makler_november.csv',headers:true)
puts "-----------------------------------------------------------"
puts "step 2"
puts "Create a new variable called heating and assign to it all the posts that have central heating
and is an apartment"
heating = data.select {|data| (data[2]= "apartment") && (data[4] !=nil) && (data[4].include?"Heating system: central")}
puts heating.length
puts"---------------------------------------------------------"
puts "step 3"
puts "If the posts in the heating variable has three or more rooms, assign the posts from question to the variable big. If the posts has fewer than three rooms, assign them to the variable small"

 big= heating.select {|data| data[24].to_i>=3}
small=heating.select {|data| data[24].to_i<3}
  puts "step 4"
puts "----------------------------"
puts "For each variable big and small, what are the 5 most frequently used words used in the
# column additional_info? Remember, you must clean the string first, then normalize it, before
# you count. Refer to the notes from class if you can't remember how to do this." 	

big_wordbox=String.new
small_wordbox=String.new
big.each do |data|
big_wordbox += data["additional_info"] unless data ["additional_info"].nil?
  big_wordbox += " "
end
small.each do |data|
small_wordbox += data["additional_info"] unless data ["additional_info"].nil?
small_wordbox += " " 
end 
clean_big_wordbox= big_wordbox.gsub(".", " ").gsub(",", " ").gsub("\"", " ").gsub(":", " ").gsub(";", " ").gsub("?", " ").gsub(/\s+/, " ").downcase
big_words=clean_big_wordbox.split(" ")
big_words_count=Hash.new(0) 
big_words.each do |word|
	big_words_count[word] +=1
	end
big_words_count_sorted=big_words_count.sort_by {|w, v| -v} 
big_words_count_sorted.each do |w, v|
end
puts "Five the most frequent words used in 'additional_info' column in big apartments' description are [word, frequency] these: #{big_words_count_sorted [0]}  #{big_words_count_sorted [1]}  #{big_words_count_sorted [2]}  #{big_words_count_sorted [3]}  #{big_words_count_sorted [4]}" 
puts "----------------------------------------------"
clean_small_wordbox= small_wordbox.gsub(".", " ").gsub(",", " ").gsub("\"", " ").gsub(":", " ").gsub(";", " ").gsub("?", " ").gsub(/\s+/, " ").downcase
small_words=clean_small_wordbox.split(" ")
small_words_count=Hash.new(0) 
small_words.each do |word|
	small_words_count[word] +=1
	end
small_words_count_sorted=small_words_count.sort_by {|w, v| -v} 
small_words_count_sorted.each do |w, v|
end
puts "Five the most frequent words used in 'additional_info' column in small apartments' description are [word, frequency] these: #{small_words_count_sorted [0]}  #{small_words_count_sorted [1]}  #{small_words_count_sorted [2]}  #{small_words_count_sorted [3]}  #{small_words_count_sorted [4]}" 
puts "Five the most frequent words used in 'additional_info' column in big apartments' description are [word, frequency] these: #{big_words_count_sorted [0]}  #{big_words_count_sorted [1]}  #{big_words_count_sorted [2]}  #{big_words_count_sorted [3]}  #{big_words_count_sorted [4]}" 
 
