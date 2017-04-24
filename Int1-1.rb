#Second Coding Challenge at Kiprosh

puts "Enter number of rows"
rows = gets.chomp.to_i
puts "Type 1 for triangle or 2 for square"
shape = gets.chomp.to_i

def drawTriangle(rows)
  rows.times do |n|
    print " " * (rows - n)
    puts "*" * (2 * n + 1)
  end
end

def drawSquare(rows)
  puts "*" * rows
  (rows - 2).times { puts "*" + " "*(rows - 2) + "*" }
  puts "*" * rows
end

puts "------------- Output ----------- \n \n"
if shape == 1 && rows > 1
  drawTriangle(rows)
elsif shape ==2 && rows > 1
  drawSquare(rows)
else
  puts "you can do it! I believe in you! :D"
end
