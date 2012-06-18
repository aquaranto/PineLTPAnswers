#Ask for starting year
puts "Please select a starting year"
starting = gets.chomp.to_i
#Ask for ending year
puts = "Please select an ending year"
ending = gets.chomp.to_i

#check if ending > starting and we don't want years before 1500 or after 3000 (just to limit it)

if ending > starting && starting >= 1500 && ending >= 1500 && starting <= 3000 && ending <= 3000
  if starting % 4 
else
  puts "Sorry. Your starting year needs to be before your ending year"
  break
end




