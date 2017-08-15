puts 'What\'s your first name?'
first_name = gets.chomp
puts 'What\'s your middle name?'
middle_name = gets.chomp
puts 'What\'s your last name?'
last_name = gets.chomp
puts 'Hello, ' + first_name + ' ' + middle_name + ' ' + last_name + '.'

puts 'What\'s your favorite number?'
number1 = gets.chomp
number2 = number1.to_i + 1
puts 'My favorite number is ' + number2.to_s + '. It\'s bigger and better than yours.'
