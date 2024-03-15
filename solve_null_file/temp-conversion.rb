# Write a temp-conversion program that gives user option of converting Fahrenheit to Celsius
# or Celsius to Fahrenheit.

puts "1 - convert Fahrenheit to Celsius\n2 - convert Celsius to Fahrenheit. : "
choose = gets.chomp.to_i
if choose == 1
  puts "Enter the temp. in Fahrenheit: "
  temp_f = gets.chomp.to_f
  temp_c = (temp_f - 32) / 1.8
  puts "Temperature in Celsius is:  #{temp_c}"
elsif choose == 2
  puts "Enter the temp. in Celsius: "
  temp_c = gets.chomp.to_f
  temp_f = (temp_c * 1.8) + 32
  puts "Temperature in Celsius is:  #{temp_f}"
else
  puts "Wrong choice."
end