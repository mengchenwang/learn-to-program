puts 'What do you want?'
question = gets.chomp
puts 'WHADDAYA MEAN "' + question.upcase + '"?!? YOU\'RE FIRED!!'

line_width = 60
ch = 'Chapter'
pa = 'page'
puts ('Table of Contents'.center (line_width))
puts ''
puts ((ch + '1:  Getting Started').ljust (line_width/2)) + ((pa + '  1').rjust (line_width/2))
puts ((ch + '2:  Numbers').ljust (line_width/2)) + ((pa + '  9').rjust (line_width/2))
puts ((ch + '3:  Letters').ljust (line_width/2)) + ((pa + ' 13').rjust (line_width/2))
