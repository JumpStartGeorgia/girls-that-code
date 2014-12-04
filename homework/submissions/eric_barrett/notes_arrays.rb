#!/usr/bin/env ruby

require 'csv'

path = "/media/eric/SHARED2/home/eric/cloud/ercbrrtt-owncloud/projects/gtc/notes/"
file1 = 'us-diary.csv'
file2 = 'makler_november.csv'

file = File.open(path + file2, 'r').read
csv_data = CSV.parse(file, headers: true)
csv_data_not_nil = csv_data.select{|row| row[20] != nil}
districts = csv_data_not_nil.map {|row| row[20] }

unique_districts = districts.uniq



puts unique_districts.sort




