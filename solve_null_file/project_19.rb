# Write a program to accept from user  list of integer and displays the number
# of positive and negative values in the list. a sample run of the program :
# Enter the number of values: 3
# Enter the values : 2, -1, 6
# The number of positive values : 2
# The number of negative values : 1

positive = 0
negative = 0

puts "Enter the number of values: "
num_of_nums = gets.chomp.to_i
puts "Enter values: "
(1..num_of_nums).each do |i|
  number = gets.chomp.to_i
  if number > 0
    positive += 1
  elsif number < 0
    negative += 1
  end
end
puts "The number of positive values : #{positive}"
puts "The number of negative values : #{negative}"