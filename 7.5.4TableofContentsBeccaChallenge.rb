line_width = 75

contents = []

while true
subcontents = []
puts 'What is the chapter number and name (ex: 1: Getting Started)?'
chapter = gets.chomp
puts 'What is the page number?'
page = gets.chomp
  if chapter != ''
    subcontents.push chapter
    subcontents.push page
  else
    puts '...'  
    break
  end
contents.push subcontents
end

puts "Table of Contents".center(line_width)

contents.each do |num, pgnum|
  puts "Chapter " + num.ljust(line_width/2) + "Page " + pgnum.rjust(line_width/20)
end

