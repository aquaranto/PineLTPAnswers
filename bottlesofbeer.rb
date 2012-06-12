puts "How many bottles of beer do you have?"
bottles = gets.chomp.to_i

while bottles >= 1 && bottles < 100
  puts "#{bottles} bottles of beer on the wall,"
  puts "#{bottles} bottles of beer,"
  puts "Take one down, pass it around,"
  bottles -= 1
  puts "#{bottles} of beer on the wall!"
  
end

if bottles <= 0
  puts "You don't have any bottles left :("
end

if bottles >= 100
  puts "Sorry, you have too many bottles to hang on the wall :("
end