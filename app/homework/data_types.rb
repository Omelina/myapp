# frozen_string_literal: true

student = { name: 'Oky Madrigal', final_grade: 80, age: 23 }

puts student[:name]
puts student[:final_grade]
puts student[:age]

ary = ['Oky', 10, 3.14, 'This is a string', 'last element']
ary.each do |i|
  puts i
end

hash = { 'red' => 0xf00, 'green' => 0x0f0, 'blue' => 0x00f }
hash.each do |key, value|
  print key, ' is ', value, "\n"
end

puts "String Data Type"
puts 'escape using "\\"'
puts 'That\'s right'

if true
    puts 'It is True!'
  else
    puts 'It is False!'
end
  
if nil
    puts 'nil is True!'
  else
    puts 'nil is False!'
end
  
if 0
    puts '0 is True!'
  else
    puts '0 is False!'
end

# float type
distance = 0.1

# both integer and float type
time = 9.87 / 3600
speed = distance / time
puts "The average speed of a sprinter is #{speed} km/h"