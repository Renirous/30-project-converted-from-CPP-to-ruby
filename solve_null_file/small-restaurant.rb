# Write a program that shows a menu in restaurant, the user chooses items, and then
# the program shall tell how much he shall pay including 10% taxes and service.

hot_dog = 9.to_f
beef = 12.to_f
chicken = 11.to_f
pepsi = 2.to_f
potatoes = 1.to_f
salad = 1.5.to_f
total = 0.to_f

def calc_taxes(order)
  taxes =  (order * 10) / 100
  return taxes
end

puts "Welcome to our restaurant .. "
puts "A: for hot dog sandwich(9$)"
puts "B: for beef sandwich(12$)"
puts "C: for chicken sandwich(11$)"
puts "D: for pepsi(2$)"
puts "E: for potatoes(1$)"
puts "F: for salad(1.5$)"

while true
  puts "your order: "
  order = gets.chomp
  if order == "A" || order == "a"
    total += hot_dog
  elsif order == "B" || order == "b"
    total += beef
  elsif order == "C" || order == "c"
    total += chicken
  elsif order == "D" || order == "d"
    total += pepsi
  elsif order == "E" || order == "e"
    total += potatoes
  elsif order == "F" || order == "f"
    total += salad
  elsif order == "N" || order == "n"
    break
  end

  puts "anything else(y/n): "
  answer = gets.chomp

  if answer == "Y" || answer == "y"
    next
  elsif answer == "N" || answer == "n"
    break
  else
    puts "Wrong order."
  end

end

total = total + calc_taxes(total)
puts "You should pay: #{total}"