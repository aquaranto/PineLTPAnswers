line_width = 75
contents = [["Chapter", '1', "Page", '5'],
			["Chapter", '2', "Page", '15'],
			["Chapter", '3', "Page", '45'], 
			["Chapter", '4', "Page", '90']]
			
contents.each do |chapter, number, page, pgnum|
  puts chapter.ljust(line_width/5) + number.ljust(line_width/2) + page.ljust(line_width/20) + pgnum.rjust(line_width/20)
end

