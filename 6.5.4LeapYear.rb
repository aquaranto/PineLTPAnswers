#Set results counter for error "There are no leap years in your date range"
result = 0


#Ask for starting year
puts "Please select a starting year"
starting = gets.chomp.to_i
#If the starting year isn't between 1 and 5000 abort the program with the following message.
#Min value set to 1 to eliminate strings entered (strings converted using .to_i return 0)
unless starting >= 1 && starting <= 5000
  abort('Please select a number between 0 and 5000')
end


#Ask for ending year
puts "Please select an ending year"
ending = gets.chomp.to_i
#If the ending year isn't between 1 and 5000 abort the program with the following message.
#Min value set to 1 to eliminate strings entered (strings converted using .to_i return 0)
unless ending >= 1 && ending <= 5000
  abort('Please select a number between 0 and 5000')
end


puts "Here are your leap years"
puts "..."


while ending >= starting 
#is it divisible by 4, 100, or 400? If is is divisible, %(modulus) returns 0(zero). 
  dbyfour = starting % 4
  dbyhund = starting % 100
  dbyfourhund = starting % 400
# if it is divisible by 400 OR if it is divisible by 4 AND it's NOT divisible by 100 
  if dbyfourhund == 0 || dbyfour == 0 && dbyhund !=0  
    puts starting    
    result += 1
  end
#Increment to next number for if-statement to check
  starting += 1
end


#if there were no results, this error prints
if result == 0
  puts 'There are no leap years in your date range'
end
