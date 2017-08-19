# Orange tree
class OrangeTree
  def initialize
    @orange_count = 0
    @tree_height = 10
    @tree_age = 0

    puts "You planted an orange tree.\n\n" +
         "    oxoxoo    ooxoo\n" +
         "  ooxoxo oo  oxoxooo\n" +
         " oooo xxoxoo ooo ooox\n" +
         "  oxo o oxoxo  xoxxoxo\n" +
         "   oxo xooxoooo o ooo\n" +
         "    ooo\oo\  /o/o\n" +
         "        \  \/ /\n" +
         "         |   /\n" +
         "         |  |\n" +
         "         | D|\n" +
         "         |  |\n" +
         "         |  |\n" +
         "  ______/____\____\n"

  end

  def height
    puts "The orange tree is #{@tree_height}cm tall."
  end

  def one_year_passes
    @orange_count = 0
    @tree_height += 10
    @tree_age += 1
    if @tree_age >= 20
      puts "The orange tree is dead.\n" +
           "ಥ_ಥ"
      exit
    else
      puts 'The orange tree is one year older.'
      if @tree_age == 5
        puts 'The orange tree has started to produce orange.'
      end
      if @tree_age >= 5
        puts 'There are oranges on the tree.'
        @orange_count = @tree_age - 2
      else
        puts 'The tree is too young to produce oranges.'
      end
    end
  end

  def count_the_oranges
    if @orange_count <= 0
      puts 'There are no oranges on the tree.'
    elsif @orange_count == 1
      puts 'There is 1 orange on the tree.'
    else
      puts "There are #{@orange_count} oranges on the tree."
    end
  end

  def pick_an_orange
    if @orange_count <= 0
      puts 'There are no more oranges to pick this year. Come back next year!'
    else
      puts 'You pick an orange and stuff it in your mouth. It was delicious.'
      @orange_count -= 1
    end
  end

end

while true
  puts
  puts "What would you like to do?\n" +
       "A = Plant an orange tree\n" +
       "B = Count the oranges\n" +
       "C = See how tall the tree is\n" +
       "D = One year passes\n" +
       "E = Pick an orange\n"
  action = gets.chomp
  if action == 'A'
    tree = OrangeTree.new
  elsif action == 'B'
    tree.count_the_oranges
  elsif action == 'C'
    tree.height
  elsif action == 'D'
    tree.one_year_passes
  elsif action == 'E'
    tree.pick_an_orange
  end
end
