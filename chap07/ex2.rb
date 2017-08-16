# Deaf grandma
puts 'Grandma: HI SONNY!'
while true
talk = gets.chomp
  if talk == 'BYE'
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
