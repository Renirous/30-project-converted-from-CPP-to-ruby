# write a program that accepts numbers from the user and counts the positive
# and negative numbers. the results should be displayed when the user enters 0.
# a sample run of the program should be like :
# Enter numbers for count the positive numbers from negative(0 to end): 5, 4, -5, -8
# you entered 2 Positive numbers and Negative is 2

positive = 0
negative = 0
list = []
puts "Enter numbers for count the positive numbers from negative(0 to end): "
while true
  number = gets.chomp().to_i
  list.push(number)
  if number > 0
    positive += 1
  elsif number < 0
    negative += 1
  else
    break
  end
end
puts "you entered #{positive} Positive numbers and Negative is  #{negative}"