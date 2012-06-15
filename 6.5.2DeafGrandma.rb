puts "You're visiting your grandma who can't hear very well."
puts "You should start a converstaion with her..."

while true
  
  convo = gets.chomp

  if convo == convo.upcase
    puts 'NO, NOT SINCE ' + (rand(20) + 1930).to_s
    break
  else
    puts 'HUH?! SPEAK UP, SONNY'
  end

end