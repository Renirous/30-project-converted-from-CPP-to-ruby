# Write a program that reads in the length and width of rectangular garden and the length and width
# of a rectangular house situated in the garden. your program should compute the time required
# to cut the grass around the house at the rate of 2 m^2 per second.

puts "will take the Dimensions of all garden."
puts "Enter the width of all garden: "
width_all_garden = gets.chomp.to_f
puts "Enter the length of all garden: "
length_all_garden = gets.chomp.to_f
puts "Then will take the Dimensions of house only."
puts "Enter the width: "
width_of_house = gets.chomp.to_f
puts "Enter the length: "
length_of_house = gets.chomp.to_f

def calc_area(width, length)
  return width * length
end

$area_of_all_garden = calc_area(width_all_garden, length_all_garden)
puts "Area of all garden #{$area_of_all_garden}"
$area_of_house = calc_area(width_of_house, length_of_house)
puts "Area of house #{$area_of_house}"

def calc_grass_and_time
  area_of_grass = $area_of_all_garden - $area_of_house
  time_of_cut = area_of_grass / 2
  time_of_cut = time_of_cut / 60
  return "the are of grass is #{area_of_grass} 2m. and it will take #{time_of_cut} seconds"
end
puts calc_grass_and_time