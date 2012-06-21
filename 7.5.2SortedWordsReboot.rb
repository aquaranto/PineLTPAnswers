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

while true
z = 0

#Need to modify the line to make generic
if words [z] < words [z + 1] && words [z + 1] < words[z + 2] && words [z + 2] < words[z + 3] && words [z + 3] < words[z + 4] && words [z + 4] < words[z + 5]
break

else
y = 0

# Bubble sort: compare 1-2, 2-3, 3-4, ..., n-n+1. repeat until entire set is sorted
  while y < (words.length - 1)

    if words[y] > words [y+1]
      a = words[y]
      b = words[y+1]
  
      words[y] = b
      words[y+1] = a
  
      y += 1

    else
      y += 1

    end
  end
end
end
#return the array to the user, sorted alphabetically
words.each do |word|
   puts word
end

