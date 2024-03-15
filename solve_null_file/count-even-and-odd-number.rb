# Write a program that accepts from the user a list of positive integers and displays the numbers
# of even and odd values in the list. the program accepts numbers from the user until he enters
# a negative value.

even_num = 0
odd_num = 0
puts "Enter the number to count: "
while true
  number = gets.chomp.to_i
  if number < 0
    break
  elsif number % 2 == 0
    even_num += 1
  elsif  number % 2 != 0
    odd_num += 1
  end
end
puts "The number of even values #{even_num}"
puts "The number of odd values #{odd_num}"