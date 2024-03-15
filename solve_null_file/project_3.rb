# write a program that accepts width and height of rectangle and
# draws it on the screen. a sample run can be as the following:
# Enter a width of rectangle : 7
# Enter a height of rectangle : 3
# Enter a character do draw rec : *
# *******
# *******
# *******

puts "Enter a width of rectangle : "
width_user = gets.chomp().to_i
puts "Enter a height of rectangle : "
height_user = gets.chomp().to_i
puts "Enter a character do draw rec : "
char = gets.chomp().to_s

width = 1
height = 1

# way_1

for i in height..height_user do
  for i in width..width_user do
    print char
  end
  print "\n"
end

# way_2

(height..height_user).each do
  (width..width_user).each do
    print char
  end
  print "\n"
end
