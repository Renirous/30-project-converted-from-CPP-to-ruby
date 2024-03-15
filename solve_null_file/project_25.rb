# Write a program to compute the factorial of a positive integer. factorial(n) = 1*2*3*...*n.

fact = 1
puts "Enter a number to get the sum of fact: "
number = gets.chomp.to_i
(1..number).each do |i|
  fact *= i
end
puts fact