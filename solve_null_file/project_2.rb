# write a program that allows the user to enter a number and then generate its
# multiplication table. formatting it into 5 columns and 20 lines. interaction
# with the program should look like this (only the first four lines are shown):
# Enter a number : 3
# 0       3       6       9       12
# 15      18      21      24      27
# 30      33      36      39      42
# 45      48      51      54      57
# # Do another (Y/N): n


puts "Enter a number : "
number = gets.chomp().to_i
$result = 1
column = 0
lines = 0
$answer = 'y'
while $answer == 'y'
  (column..100).each do |column|
    $result = number * column
    print "#{$result}\t"
    column += 1
    if column % 5 == 0
      puts "\n"
      lines += 1
      if lines == 4
        break
      end
    end
  end
  puts "Do another (Y/N): "
  $answer = gets.chomp()
  if $answer == 'y'
    puts "Enter a number : "
    number = gets.chomp().to_i
    lines = 0
    next
  elsif $answer == 'n'
    break
  else
    puts "wrong answer."
  end
end