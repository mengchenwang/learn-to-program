# Happy birthday
puts 'Which year were you born?'
year = gets.chomp
puts 'Which month?'
month = gets.chomp
puts 'Which day?'
day = gets.chomp

year = (Time.new - Time.local(year, month, day)) / (60 * 60 * 24 * 365)
spank = year.to_i
spank.times { puts 'SPANK!' }
