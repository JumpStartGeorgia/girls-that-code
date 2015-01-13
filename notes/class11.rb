#notes for class 11

# creating a hash

my_array = [] # create a new array
my_array = Array.new


my_hash = {}
my_hash = Hash.new

my_hash = {
  "Eric" => 37,
  "Natia" => 27,
  "Lida" => 27,
  "Inga" => 29
}

puts my_hash['Lida']

months = {}

months["January"] = 1
months["February"] = 2
months["March"] = 3
months["April"] = 4
months["May"] = 5

months.each do |key, value|
  puts "Key: #{key}, Value: #{value}"
end

require "csv"

file = "/media/eric/SHARED2/home/eric/projects/jumpstart/gtc/datafiles/makler_november.csv"
data = CSV.open(file, headers: true).read

data.each do |datum|
  puts datum["address_street"] unless datum["address_street"].nil?
end

puts "======================================"
puts ""

word_box = String.new

str1 = "Eric "
str2 = "Barrett"
str3 = str1 + str2

data.each do |datum|
  word_box += datum['additional_info'] unless datum['additional_info'].nil?
  word_box += " "
end

word_box_cleaned = word_box.gsub(".", " ").gsub(",", " ").gsub("\"", " ").gsub(":", " ").gsub(";", " ").gsub("?", " ").gsub(/\s+/, " ").downcase

word_array = word_box_cleaned.split(" ")

word_count = Hash.new(0)

word_array.each do |word|
    word_count[word] += 1
end

word_count_sorted = word_count.sort_by { |k, v| -v }

word_count_sorted.each do |k, v|
  puts "Key: #{k}, Value: #{v}"
end

puts word_count.keys
puts word_count.values
