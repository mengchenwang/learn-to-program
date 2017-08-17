# Shuffle
def shuffle some_array
  recursive_shuffle some_array, []
end

def recursive_shuffle not_shuffled, shuffled
  if not_shuffled.length == 0
    return shuffled
  end
  x = rand(not_shuffled.length)
  word = not_shuffled.delete_at(x)
  shuffled.push word
  recursive_shuffle not_shuffled, shuffled
end

puts 'please type something.'
array = []
while true
word = gets.chomp.to_s
  if word == ''
    break
  end
array.push word
end
puts shuffle array
