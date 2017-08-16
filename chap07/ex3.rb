# Deaf grandma extended
puts 'Grandma: HI SONNY!'
bye_counter = 0
while true
talk = gets.chomp
  if talk == 'BYE'
    bye_counter += 1
    talk = talk.downcase
  else
    bye_counter = 0
  end
  if bye_counter == 3
    break
  end
  if talk != talk.upcase
    puts 'Grandma: HUH?! SPEAK UP, SONNY!'
  else
    year = 1930 + rand(21)
    puts 'Grandma: NO, NOT SINCE ' + year.to_s + '!'
  end
end
puts 'Grandma: BYE SONNY!'
