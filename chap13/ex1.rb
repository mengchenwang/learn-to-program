# Shuffle
class Array
  def shuffle
    arr = self
    new_arr = []
    while arr.length > 0
      rand_index = rand(arr.length)
      left_arr = []
      index_counter = 0
      arr.each do |x|
        if index_counter == rand_index
          new_arr.push x
        else
          left_arr.push x
        end
        index_counter += 1
      end
      arr = left_arr
    end
    new_arr
  end
end

arr = [1, 2, 3, 4, 5, 6, 7, 8]
puts arr
puts (arr.shuffle)
