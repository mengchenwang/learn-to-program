# Table of contents, revisited
line_width = 60
chapter = [['Chapter 1: Getting Started', 1],
           ['Chapter 2: Numbers', 9],
           ['Chapter 3: Letters', 13]]

puts ('Table of Contents'.center (line_width))
puts ''
chapter.each do |chap|
  name = chap[0]
  page = chap[1].to_s
  puts (name.ljust (line_width/2)) + (page.rjust (line_width/2))
end
