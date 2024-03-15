# Write a program that accepts two number from the user. the first is for the base number
# and the other for the power. the program shall calculate the result of the power operation.
# An Error should be fired if the power is negative.
#
while true

  def power(base, power)
    result = 1
    power.times do
      result *= base
    end
    return result
  end

  puts "Enter the base number: "
  base_number = gets.chomp.to_i
  puts "Enter the power number: "
  power_number = gets.chomp.to_i

  if power_number < 0
    puts "Error!! POWER IS NEGATIVE."
  elsif power_number >= 0
    puts "The result is : #{power(base_number, power_number)}"
  end

  puts "Do another(y/n): "
  answer = gets.chomp

  if answer == "Y" || answer == "y"
    next
  elsif answer == 'N' || answer == 'n'
    break
  else
    puts "wrong answer."
  end

end

