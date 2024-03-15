# Write a program accepts a positive integer and decides whether it a prime number or not.


count = 0
puts "Enter the number : "
number = gets.chomp.to_f
(2...number).each do |i|
  if number % i == 0
    count += 1
  end
end
if count == 0
  puts "is prime."
else
  puts "not prime."
end