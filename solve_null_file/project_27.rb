# a second order equation is written by the formula y = a X^2 + b X + c. write a program
# that accept from the user the base X and three coefficients a, b, and c and calculate y.

# y = a X^2 + b X + c

puts "Enter the base : "
base = gets.chomp.to_f
puts "Enter the coefficient of X^2: "
x_square = gets.chomp.to_f
puts "Enter the coefficient of X^1: "
x_one = gets.chomp.to_f
puts "Enter the coefficient of X^0: "
x_zero = gets.chomp.to_f

y = (x_square * (base**2)) + (x_one * base) + (x_zero)
puts "Y = #{y}"