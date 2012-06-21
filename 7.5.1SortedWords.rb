#Get words until return pressed on blank line. Store them in an array. Return the array to the user sorted.
puts 'Please type as many words as you\'d like. One word per line.' 
puts 'Press enter on a blank line when you\'re finished'

words = []

while true
word = gets.chomp
  if word != ''
    words.push word
  else
    puts '...'  
    break
  end
end

#return the array to the user, sorted alphabetically
words.sort.each do |word|
  
  puts word
end