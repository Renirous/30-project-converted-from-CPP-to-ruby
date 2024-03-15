# Write a program to accept an integer number from the user and outputs the factors
# of this number.

puts "Enter Number to get its factors: "
number = gets.chomp.to_i
(1..number).each do |i|
  if number % i == 0
    puts "the factor is : #{i}"
  end
end
