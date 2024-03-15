# Write a program to calculate the area of a square [area = side^2] or a triangle [area = (base*height)/2]
# the program accept from the user the type of shape as a character (t oos s) and output the area.

# Way_Two

puts "Enter the type of shape(t for triangle - s for square): "
shape = gets.chomp.to_s
if shape == 'S' || shape == 's'
  puts "Enter the length: "
  length_S = gets.chomp.to_f
  puts "The area is : #{length_S**2}"
elsif shape == 'T' || shape == 't'
  puts "Enter the height: "
  height_T = gets.chomp.to_f
  puts "Enter the length: "
  base_T = gets.chomp.to_f
  puts "The area is : #{(height_T*base_T)/2}"
else
  "Wrong shape you entered."
end

# Way_One

def area_of_square
  puts "Enter the length: "
  length_S = gets.chomp.to_f
  return length_S*length_S
end
def area_of_triangle
  puts "Enter the height: "
    height_T = gets.chomp.to_f
    puts "Enter the base: "
    base_T = gets.chomp.to_f
  return (base_T*height_T) / 2
end
puts "Enter the type of shape(t for triangle - s for square): "
shape = gets.chomp.to_s
if shape == 'S' || shape == 's'
  puts area_of_square
elsif shape == 'T' || shape == 't'
  puts area_of_triangle
else
  "Wrong shape you entered."
end