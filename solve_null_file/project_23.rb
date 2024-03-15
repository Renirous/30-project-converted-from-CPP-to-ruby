# Write a program that accept from the user a list of positive integer numbers which
# terminate when teh user enters -1 the program should calculate how many numbers
# are entered from the range 1 to 10, 11 to 20, 21 to 30, 31 to 40 or 41 to 50.


count_1 = 0
count_2 = 0
count_3 = 0
count_4 = 0
count_5 = 0
count_6 = 0

puts "Enter a list of positive numbers (-1 to terminate)"
while true
  number = gets.chomp.to_i
  if number == -1
    break
  elsif number >= 1 and number <= 10
    count_1 += 1
  elsif number >= 11 and number <= 20
    count_2 += 1
  elsif number >= 21 and number <= 30
    count_3 += 1
  elsif number >= 31 and number <= 40
    count_4 += 1
  elsif number >= 41 and number <= 50
    count_5 += 1
  else
    count_6 += 1
  end
end
puts "you enter #{count_1} number between 1 to 10"
puts "you enter #{count_2} number between 11 to 20"
puts "you enter #{count_3} number between 21 to 30"
puts "you enter #{count_4} number between 31 to 40"
puts "you enter #{count_5} number between 41 to 50"
puts "you enter #{count_6} number out of range that is to 50."