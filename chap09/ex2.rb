# Old-school Roman numerals
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
  puts 'M' * m + 'D' * d + 'C' * c + 'L' * l + "X" * x + 'V' * v + 'I' * i
end

puts 'Please give me a number.'
old_roman gets.chomp.to_i
