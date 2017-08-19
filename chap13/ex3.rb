# to roman
class Integer
  def to_roman
    raise 'Please enter a number greater than 0.' if self <= 0
    number = self

    m = number / 1000
    d = number % 1000 / 500
    c = number % 500 / 100
    l = number % 100 / 50
    x = number % 50 / 10
    v = number % 10 / 5
    i = number % 5 / 1

    roman = 'M' * m
    if d == 1 && c == 4
      roman = roman + 'CM'
    elsif d == 0 && c == 4
      roman = roman + 'CD'
    else
      roman = roman + 'D' * d + 'C' * c
    end

    if l == 1 && x == 4
      roman = roman + 'XC'
    elsif l == 0 && x == 4
      roman = roman + 'XL'
    else
      roman = roman + 'L' * l + "X" * x
    end

    if v == 1 && i == 4
      roman = roman + 'IX'
    elsif v == 0 && i == 4
      roman = roman + 'IV'
    else
      roman = roman + 'V' * v + 'I' * i
    end
    roman
  end
end

puts (999.to_roman)
