# Build a better playlist
def shuffle arr
  arr.sort_by{rand}
end

def shuffle_2 arr
  arr_1 = []
  arr_2 = []
  order = 2
  arr.each do |music|
    if order%2 == 1
      arr_1.push music
    else
      arr_2.push music
    end
    order += 1
  end

  new_arr = arr_1 + arr_2
end

def save object, filename
  File.open filename, 'w' do |f|
    music_names.each do |music|
    f.write music + "\n"
    end
  end
end

Dir.chdir '/Users/mengchenwang/Documents/music/playlist'
puts 'Where are the music files?'
music_names = Dir["#{gets.chomp}/**/*.mp3"]
puts 'What would you like to call this playlist?'
filename = "#{gets.chomp}.m3u"

shuffle music_names
shuffle_2 music_names

save music_names, filename

puts "Done! Check it out here: /Users/mengchenwang/Documents/music/playlist"
