# write a program that accepts numbers from the user and then tells the maximum
# two numbers of them. the results should be displayed when the user enters
# a negative number. a sample run of the program should be like :
# Enter numbers (less than 0 to end): 5, 2, 10, 15, 30, 12, -1
# the maximum two numbers are 30 and 15.

# Way_one

puts "Enter numbers (less than 0 to end): "
list = []
while true
  number = gets.chomp().to_i
  list.push(number)
  if number < 0
    break
  end
end
# puts "numbers ==> #{list}"              # numbers ==> [5, 2, 10, 15, 30, 12, -1]
list.delete(list.last)                    # numbers ==> [5, 2, 10, 15, 30, 12]
# puts "the numbers are #{list}"
# puts "the max number is #{list.max()}"
max_1 = list.max()
list.delete(list.max())                   # numbers ==> [5, 2, 10, 15, 12]
# puts "the numbers are #{list}"
# puts "the max number is #{list.max()}"
max_2 = list.max()
puts "the maximum numbers are #{max_1} and #{max_2}"

################################.
# Way_two.
#
max_1 = 0
max_2 = 0
puts "Enter numbers (less than 0 to end): "
while true
  number = gets.chomp().to_i
  if number < 0
    break
  elsif number < max_1 and number > max_2
    max_2 = number
  elsif number > max_1
    max_2 = max_1
    max_1 = number
  end
end
puts "the maximum numbers are #{max_1} and #{max_2}"

# i will enter number 5, 5 is not smaller than 0.
# then 5 is not smaller than the max_1 it is 0 already and 5 is bigger than max_2 it is 0
# but this condition is not worked here because "and" .
# so 5 is max_1 and max_2 still equal zero. then enter 6  is not smaller than 0
# and 6 is not smaller than max_1 = 5 so max_2 = 5 and max_1 = 6 ...........