# write a program that accept a list of student grades out of 100 and displays the class average,
# the highest grade and the number of the students that failed the course. the student fails the course
# if he receives a grade less than 50.

# Way_One

failed = 0
sum = 0
list_of_grades = []

puts "Enter the number of student: "
num_of_stds = gets.chomp.to_i
puts "Enter the grades: "

(1..num_of_stds).each do |i|
  grades = gets.chomp.to_f
  list_of_grades.push(grades)
  if grades < 50
    failed += 1
  end
  sum += grades
end

puts "The class average is : #{sum/num_of_stds}"
puts "the number of students that failed the course is : #{failed}"
puts "The highest grade is : #{list_of_grades.max}"

# Way_Two

failed = 0
sum = 0
max = 0

puts "Enter the number of student: "
num_of_stds = gets.chomp.to_i
puts "Enter the grades: "

(1..num_of_stds).each do |i|
  grades = gets.chomp.to_f
  if grades < 50
    failed += 1
  end
  if grades > max
    max = grades
  end
  sum += grades
end

puts "The class average is : #{sum/num_of_stds}"
puts "the number of students that failed the course is : #{failed}"
puts "The highest grade is : #{max}"