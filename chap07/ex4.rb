# Leap years
puts 'Hi, What\'s the starting year?'
year = gets.chomp.to_i
puts 'Hi, What\'s the ending year?'
e_year = gets.chomp.to_i

while year <= e_year
leap = false
  if year%4 == 0
    leap = true
  end
  if year%100 == 0
    leap = false
  end
  if year%400 == 0
    leap = true
  end
  if leap == true
    puts year
  end
year += 1
end
