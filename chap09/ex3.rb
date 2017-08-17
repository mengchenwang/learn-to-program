# "Modern" Roman numerals
# I = 1 V = 5 X = 10 L = 50
# C = 100 D = 500 M = 1000

def old_roman number
  m = number / 1000
  d = number % 1000 / 500
  c = number % 500 / 100
  l = number % 100 / 50
  x = number % 50 / 10
  v = number % 10 / 5
  i = number % 5 / 1

  print 'M' * m
  if d == 1 && c == 4
    print 'CM'
  elsif d == 0 && c == 4
    print 'CD'
  else
    print 'D' * d + 'C' * c
  end

  if l == 1 && x == 4
    print 'XC'
  elsif l == 0 && x == 4
    print 'XL'
  else
    print 'L' * l + "X" * x
  end

  if v == 1 && i == 4
    print 'IX'
  elsif v == 0 && i == 4
    print 'IV'
  else
    print 'V' * v + 'I' * i
  end
  puts
end

puts 'Please give me a number.'
old_roman gets.chomp.to_i
