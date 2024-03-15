# Write a program that accepts a list of student marks and displays the percentage of students who got excellent.
# a student gets excellent in a subject if he received a mark of 85 or more. the program accept marks from
# the user until he enters a negative number for the mark.

num_marks = 0.to_f
ex_mark = 0.to_f

puts "Enter the marks: "
while true
  marks = gets.chomp.to_f
  if marks == -1
    break
  elsif marks >= 85 and marks <= 100
    ex_mark += 1
  end
  num_marks += 1
end

puts "#{(ex_mark/num_marks) * 100} % of the students got excellent."