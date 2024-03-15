# Write a program that accepts marks of n students and tell how many students
# got A, B, C, D or failed. a sample run can be as the following:
# Enter number of students: 3
# Student 1: 15.5
# Student 2: 90
# Student 3: 65
# 1 of students got A grade.
# 0 of students got B grade.
# 1 of students got C grade.
# 0 of students got D grade.
# 1 of students failed.


grad_A = 0
grad_B = 0
grad_C = 0
grad_D = 0
failed = 0
puts "Enter number of students: "
num_of_students = gets.chomp.to_i
(1..num_of_students).each do |i|
  puts "Student #{i}: "
  mark_of_student = gets.chomp.to_f
  if mark_of_student >= 85 and mark_of_student <= 100
    grad_A += 1
  elsif mark_of_student < 85 and mark_of_student >= 70
    grad_B += 1
  elsif mark_of_student < 70 and mark_of_student >= 60
    grad_C += 1
  elsif mark_of_student < 60 and mark_of_student >= 50
    grad_D += 1
  else
    failed += 1
  end
end
puts "#{grad_A} of students got A grade."
puts "#{grad_B} of students got B grade."
puts "#{grad_C} of students got C grade."
puts "#{grad_D} of students got D grade."
puts "#{failed} of students failed."