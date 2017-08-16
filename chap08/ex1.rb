# building and sorting an array
puts 'please type something.'
array = []
while true
word = gets.chomp.to_s
  if word == ''
    break
  end
array.push word
end
puts array.sort
