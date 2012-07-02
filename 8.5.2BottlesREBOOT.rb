def englishNumber number
  
  #  No more special cases!  No more returns!
  
  numString = ''  #  This is the string we will return.
  
  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  #  "left" is how much of the number we still have left to write out.
  #  "write" is the part we are writing out right now.
  #  write and left... get it?  :)
  left  = number

  write = left/1000000000000         # how many thousands left to write out?
  left  = left - write*1000000000000 # subtract off those thousands

  if write > 0
    #  Now here's a really sly trick:
    trillions  = englishNumber write
    numString = numString + trillions + ' trillion'
    #  That's called "recursion".  So what did I just do?
    #  I told this method to call itself, but with "write" instead of
    #  "number".  
    
    if left > 0
      #  So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/1000000000         # how many thousands left to write out?
  left  = left - write*1000000000 # subtract off those thousands

  if write > 0
    #  Now here's a really sly trick:
    billions  = englishNumber write
    numString = numString + billions + ' billion'
    #  That's called "recursion".  So what did I just do?
    #  I told this method to call itself, but with "write" instead of
    #  "number".  
    
    if left > 0
      #  So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end
  
  write = left/1000000         # how many thousands left to write out?
  left  = left - write*1000000 # subtract off those thousands

  if write > 0
    #  Now here's a really sly trick:
    millions  = englishNumber write
    numString = numString + millions + ' million'
    #  That's called "recursion".  So what did I just do?
    #  I told this method to call itself, but with "write" instead of
    #  "number".  
    
    if left > 0
      #  So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/1000         # how many thousands left to write out?
  left  = left - write*1000 # subtract off those thousands

  if write > 0
    #  Now here's a really sly trick:
    thousands  = englishNumber write
    numString = numString + thousands + ' thousand'
    #  That's called "recursion".  So what did I just do?
    #  I told this method to call itself, but with "write" instead of
    #  "number".  
    
    if left > 0
      #  So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/100          #  How many hundreds left to write out?
  left  = left - write*100  #  Subtract off those hundreds.

  if write > 0
    #  Now here's a really sly trick:
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'
    #  That's called "recursion".  So what did I just do?
    #  I told this method to call itself, but with "write" instead of
    #  "number".  
    
    if left > 0
      #  So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end
  
  write = left/10          #  How many tens left to write out?
  left  = left - write*10  #  Subtract off those tens.
  
  if write > 0
    if ((write == 1) and (left > 0))
      #  Since we can't write "tenty-two" instead of "twelve",
      #  we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      #  The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.
      
      #  Since we took care of the digit in the ones place already,
      #  we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      #  The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end
    
    if left > 0
      #  So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end
  
  write = left  #  How many ones left to write out?
  left  = 0     #  Subtract off those ones.
  
  if write > 0
    numString = numString + onesPlace[write-1]
    #  The "-1" is because onesPlace[3] is 'four', not 'three'.
  end
  
  #  Now we just return "numString"...
  numString
end


puts "How many bottles of beer do you have?"
bottles = gets.chomp.to_i
puts " "

while bottles >= 1 && bottles < 100
  englishBottle = englishNumber(bottles)
  puts "#{englishBottle} bottles of beer on the wall,"
  puts "#{englishBottle} bottles of beer,"
  puts "Take one down, pass it around,"
  bottles -= 1
  englishBottle = englishNumber(bottles)
  puts "#{englishBottle} of beer on the wall!"
  puts " "
  
end

if bottles <= 0
  puts "You don't have any bottles left :("
end

if bottles >= 100
  puts "Sorry, you have too many bottles to hang on the wall :("
end