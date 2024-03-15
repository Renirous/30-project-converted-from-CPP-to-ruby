# write a program that accepts from the user a list of n positive integer numbers.
# the program should calculate and display the sum and average of these numbers.
# sample run:
# Enter the number of integer list  : 3
# enter number 1 : 1
# enter number 2 : 5
# enter number 3 : 6
# the numbers is : [1, 5, 6]
# the sum of numbers is : 12
# the average of numbers is : 4

puts "Enter the number of integer list  : "
num_of_numbers = gets.chomp().to_i
list_of_numbers = []
sum = 0
(1..num_of_numbers).each do |i|
  puts "enter number #{i} : "
  number = gets.chomp().to_i
  list_of_numbers.push(number)
  sum += number
end
puts "the numbers is : #{list_of_numbers}"
puts "the sum of numbers is : #{sum}"
puts "the average of numbers is : #{sum/num_of_numbers}"