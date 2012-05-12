#Ruby has a number of useful methods for manipulating strings

# Look at 'em: http://www.ruby-doc.org/core-1.9.3/String.html

my_string = "HERP DERP, just a string here" 

puts my_string.reverse #reverse the order of the characters

puts my_string.downcase #convert all characters to lower case

puts my_string.include?( "DERP" ) #should return true since "DERP" is in my_string

my_array = [ "one", "two", "three", "four", "five" ]

puts my_array.join("|") #convert array into a string, seperating elements with "|" character



