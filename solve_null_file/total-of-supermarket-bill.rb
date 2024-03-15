# Write a program to calculate the total of supermarket bill. the program accepts from the user
# the quantity and unit price of a set of items and calculate the total value of the bill.
# the program continues to accept values from the user until he enters a negative number for the quantity.


total = 0
while true
  puts "Enter the quantity: "
  quantity = gets.chomp.to_i
  if quantity == -1
    break
  else
    puts "Enter price: "
    price = gets.chomp.to_f
    price = quantity * price
    total += price
  end
end
puts "The total price is : #{total}"