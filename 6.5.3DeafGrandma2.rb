bye_count = 0
puts "You're visiting your grandma who can't hear very well."
puts "You should start a converstaion with her..."

while true
  
  convo = gets.chomp

  if convo != 'BYE' && convo == convo.upcase
    puts 'NO, NOT SINCE ' + (rand(20) + 1930).to_s
    bye_count = 0
  elsif convo == 'BYE' && bye_count < 2 
    puts 'NO DEAR, I DONT THINK IT WILL RAIN'
    bye_count += 1
  elsif convo == 'BYE' && bye_count >= 2
    puts 'ALRIGHT DEAR, WILL YOU BE COMING BACK TOMORROW?'
    break
  else
    puts 'HUH?! SPEAK UP, SONNY'
    bye_count = 0
  end

end

