# Write a program that accept an integer number from the user. the program should
# display if this number is a perfect number or not. a perfect number is the one that
# equals the sum of its factors except the number itself. for example 6 = 1 + 2 + 3


sum = 0
puts "Enter the number: "
number = gets.chomp.to_i
(1..number - 1).each do |i|
  if number % i == 0
    # puts i
    sum += i
  end
end
if sum == number
  puts "#{number} is Perfect number. "
else
  puts "#{number} is not Perfect number."
end