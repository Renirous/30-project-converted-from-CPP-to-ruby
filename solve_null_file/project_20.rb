# Write a program to produce the sum of the series 1**2 + 2**2 + 3**2 + .. + n**2

sum = 0
puts "Enter the length of series: "
length_of_series = gets.chomp.to_i
(1..length_of_series).each do |iterator|
  square_number = iterator**2
  sum += square_number
end
puts sum