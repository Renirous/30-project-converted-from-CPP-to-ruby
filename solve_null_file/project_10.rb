# write a program that accepts numbers from the user and then tells the minimum
# two numbers of them. the results should be displayed when the user enters
# a negative number. a sample run of the program should be like :
# Enter numbers (less than 0 to end): 5, 2, 10, 15, 30, 12, -1
# the minimum two numbers are 2 and 5.


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
# puts "the min number is #{list.min()}"
min_1 = list.min()
list.delete(list.min())                   # numbers ==> [5, 10, 15, 30, 12]
# puts "the numbers are #{list}"
# puts "the min number is #{list.min()}"
min_2 = list.min()
puts "the minimum numbers are #{min_1} and #{min_2}"

################################.
# Way_two.

puts "Enter numbers (less than 0 to end): "
min_1 = gets.chomp().to_i
if min_1 > 0
  min_2 = gets.chomp().to_i
end
while true and min_2 > 0
  number = gets.chomp().to_i
  if number < 0
    break
  elsif number > min_1 and number < min_2
    min_2 = number
  elsif number < min_1
    min_2 = min_1
    min_1 = number
  end
end
puts "the minimum numbers are #{min_1} and #{min_2}"