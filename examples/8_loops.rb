#Ruby has a lot of different ways to loop and iterate code multiple times, all of the different
#examples below accomplish the same goal in different ways.

puts "upto:"
#how many numbers does this print? 3 or 4?
0.upto(3) do |number| 
  puts number
end

puts "range each"
#you can call ".each()" on any enumerable object, this one is called a Range: (0..3)
(0..3).each do |number|
  puts number
end

puts "array each"
#arrays are enumerable
[0, 1, 2, 3].each do |number|
  puts number
end

puts "hash each"
#hashse are also enumerable
{ "color" => "blue", "type" => "square", "sides" => 4 }.each do |key, value|
  puts "#{key}: #{value}"
end

puts "while loop"
i = 0
while ( i <= 3 ) do
  puts i
  i = i + 1
end

puts "for loop"
for j in 0..3
 puts j
end
