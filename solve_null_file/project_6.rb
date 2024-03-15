# Write program that calculate how much money you a=will end up with if you invest
# an amount of money at fixed interest rate, compounded yearly. a sample run can be as the following:
# Enter initial amount : 3000
# Enter number of years: 10
# Enter interest rate(percent per year): 5.5


puts "Enter initial amount : "
amount_of_money = gets.chomp.to_f
puts "Enter number of years: "
years = gets.chomp.to_i
puts "Enter interest rate(percent per year): "
rate = gets.chomp.to_f


# way_one

while 1 <= years
  new_amount_of_money = (amount_of_money / 100) * rate
  amount_of_money = amount_of_money + new_amount_of_money
  puts amount_of_money
  year += 1
end

# way_two

(1..years).each do
  new_amount_of_money = (amount_of_money / 100) * rate
  puts new_amount_of_money
  amount_of_money = amount_of_money + new_amount_of_money
end
puts amount_of_money