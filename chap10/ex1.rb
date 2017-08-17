# Rite of Passage: Sorting
def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length == 0
    return sorted_array
  end

  word = unsorted_array.pop
  left_unsorted = []
  unsorted_array.each do |check|
    if check < word
      left_unsorted.push word
      word = check
    else
      left_unsorted.push check
    end
  end

  sorted_array.push word
  recursive_sort left_unsorted, sorted_array
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
puts sort array
