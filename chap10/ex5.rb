# 9999 Bottles of Beer on the Wall
def beer number
  new_number = number - 1
  bottle = ['no more bottles', '1 bottle', new_number.to_s + ' bottles', number.to_s + ' bottles']
  if number > 1
    x = 3
  else
    x = number
  end
  puts bottle[x] + ' of beer on the wall, ' + bottle[x] + ' of beer.'
  print 'Take one down and pass it around, '
  if number == 2
    puts '1 bottle of beer on the wall.'
  else
    puts bottle[x-1] + ' of beer on the wall.'
  end
  if new_number == 0
    return
  end
  beer new_number
end

puts beer(199)
