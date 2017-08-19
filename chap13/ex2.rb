# factorial
class Integer
  def factorial
    num = self
    if num < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    if num <= 1
      1
    else
      f_num = num
      while num > 1
        f_num = f_num * (num-1)
        num -= 1
      end
    f_num
    end
  end
end

puts 6.factorial
