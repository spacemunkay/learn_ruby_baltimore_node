#Arrays store a list of information
my_array = [ 0, 1, 2, 3, 4, 5, 6 ]
my_other_array = [ "blue", "green", "red" ]

# .at() method returns the element at the specified index 
puts "at:"
puts my_array.at(0) #should be 0
puts my_other_array.at(0) #should be blue

#Arrays are indexed starting at 0, i.e. to get the first element of an array, you get the element at the 0 index

#Ruby provides some convenience methods for arrays
puts "first:"
puts my_array.first #same as .at(0)
puts my_other_array.first #same as .at(0)

puts "last:"
puts my_array.last
puts my_other_array.last


#Look for more array methods at: http://www.ruby-doc.org/core-1.9.3/Array.html

