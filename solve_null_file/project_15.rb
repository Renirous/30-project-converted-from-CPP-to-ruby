# Write a program that will find the product of a collection of values.
# Your program should ignore any negative numbers and should terminate
# when a zero value is read.
negative_numbers = 0
result = 1
puts "Enter integer number '0' to terminate: "
while true
  number = gets.chomp.to_i
  if number > 0
    result *= number
  elsif number < 0
    negative_numbers += 1
    next
  else
    break
  end
end
puts "The product of multiplication of the positive numbers is: #{result}"
puts "The count of negative numbers is : #{negative_numbers}"