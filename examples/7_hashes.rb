#hashes store information, much like arrays, however you must use a key to retrieve the information
#instead of an index.  The key could be a string, integer, or other object.

#hashes are useful for organizing groups of related variables together

#this hash stores information about a specific shape
my_hash = { "color" => "blue", "type" => "square", "sides" => 4 } 

puts my_hash["color"] #should be blue
puts my_hash["type"] #should be square 
puts my_hash["sides"] #should be 4

#you can store hashes in arrays
my_shape_array =[ { "color" => "blue", "type" => "square", "sides" => 4 }, { "color" => "green", "type" => "triangle", "sides" => 3 }, { "color" => "red", "type" => "rectangle", "sides" => 4 } ]

#notice that I get the last element from the array before getting specific information 
puts my_shape_array.last["color"] #should be red 
puts my_shape_array.last["type"] #should be rectangle
puts my_shape_array.last["sides"] #should be 4
