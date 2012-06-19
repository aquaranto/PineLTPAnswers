#Ask for starting year
puts "Please select a starting year"
starting = gets.chomp.to_i
unless starting >= 0 && starting <= 5000
  abort('Please select a number between 0 and 5000')
end

#Ask for ending year
puts "Please select an ending year"
ending = gets.chomp.to_i
unless ending >= 0 && ending <= 5000
  abort('Please select a number between 0 and 5000')
end

puts "Here are your leap years"

while ending >= starting 
  dbyfour = starting % 4
  dbyhund = starting % 100
  dbyfourhund = starting % 400
    if dbyfourhund == 0 || dbyfour == 0 && dbyhund !=0  
      puts starting
    end
  starting += 1
end

