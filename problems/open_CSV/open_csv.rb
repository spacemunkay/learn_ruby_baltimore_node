# Lets try to open a .csv file (comma seperated value)


require 'csv' #this includes the CSV class, which has methods for opening CSV files
#without the require, the Ruby script does not know what CSV means, try commenting it out and running the program.

#more about the CSV class: http://www.ruby-doc.org/stdlib-1.9.3/libdoc/csv/rdoc/CSV.html

#the foreach method iterates over every line (or row) in our CSV file
CSV.foreach("people.csv") do |row|

  puts row.inspect #inspect method will try to turn any object to a string
end

#lets tell CSV that there are headers for this CSV file, and we don't want to read them
CSV.foreach("people.csv", :headers => :first_row, :return_headers => false) do |row|
  puts row.inspect #row should be a CSV:Row object instead of an array

  #we can access each field individually
  puts row.field("Name")
  puts row.field("Age")
  puts row.field("Sex")
end

