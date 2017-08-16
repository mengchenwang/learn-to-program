# 99 Bottles of Beer on the Wall
number = 99
while number > 1
  puts number.to_s + ' bottles of beer on the wall, ' + number.to_s + ' bottles of beer.'
  number -= 1
  print 'Take one down and pass it around, '
    if number == 1
      puts number.to_s + ' bottle of beer on the wall.'
    else
      puts number.to_s + ' bottles of beer on the wall.'
    end
end
puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down and pass it around, no more bottles of beer on the wall.'
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
