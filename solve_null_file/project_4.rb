# write a program that produces the sum of series :
# 2^1 + 2^2 + 2^3 + 2^4 + .... + 2^n

print "Enter the length of series : "
power_number = gets.chomp().to_i

def pow(base, power)
  result = 1
  power.times do
    result *= base # result = result * base
  end
  return result
end

puts "the sum of series #{pow(2, power_number)}"