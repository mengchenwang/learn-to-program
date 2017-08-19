# Grandfather clock
def clock &block
  time = Time.new.hour
  if time > 12
    time -= 12
  elsif time == 0
    time = 12
  end

  time.times do
    block.call
  end
end

end

clock do
  puts 'DONG!'
end
