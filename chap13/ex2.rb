# Orange tree. Make an OrangeTree class that has a height method
# that returns its height and a one_year_passes method that, when
# called, ages the tree one year. Each year the tree grows taller (however
# much you think an orange tree should grow in a year), and
# after some number of years (again, your call) the tree should die.
# For the first few years, it should not produce fruit, but after a while
# it should, and I guess that older trees produce more each year
# than younger trees...whatever you think makes the most sense.
# And, of course, you should be able to count_the_oranges (which
# returns the number of oranges on the tree) and pick_an_orange
# (which reduces the @orange_count by 1 and returns a string telling
# you how delicious the orange was, or else it just tells you that there
# are no more oranges to pick this year). Make sure any oranges you
# don’t pick one year fall off before the next year.

class OrangeTree

  def initialize
    @height = 1
    @age = 0
    @orange_count = 0
  end

  def height
    puts @height
  end

  def one_year_passes
    @age += 1
    @height += 1

    if @age >= 2
      @orange_count = @age * 10
    end

    if @height == 5
      puts "The tree is died"
      exit
    end
  end

  def orange_count
    puts @orange_count
  end

  def pick_an_orange
    if @orange_count > 0
      @orange_count -= 1
      puts "The orange was delicious"
    else
      puts "Woops there's no more orange left to pick this year"
    end
  end
end

orange = OrangeTree.new
print "Height: "
orange.height
print "Number of Oranges: "
orange.orange_count
print "Pick an Orange: "
orange.pick_an_orange
print "Number of Oranges: "
orange.orange_count
puts "One year passes: "
orange.one_year_passes

puts "********************************"

print "Height: "
orange.height
print "Number of Oranges: "
orange.orange_count
print "Pick an Orange: "
orange.pick_an_orange
print "Number of Oranges: "
orange.orange_count
puts "One year passes: "
orange.one_year_passes

puts "********************************"

print "Height: "
orange.height
print "Number of Oranges: "
orange.orange_count
print "Pick an Orange: "
orange.pick_an_orange
print "Number of Oranges: "
orange.orange_count
puts "One year passes: "
orange.one_year_passes

puts "********************************"

print "Height: "
orange.height
print "Number of Oranges: "
orange.orange_count
print "Pick an Orange: "
orange.pick_an_orange
print "Number of Oranges: "
orange.orange_count
puts "One year passes: "
orange.one_year_passes

puts "********************************"

print "Height: "
orange.height
print "Number of Oranges: "
orange.orange_count
print "Pick an Orange: "
orange.pick_an_orange
print "Number of Oranges: "
orange.orange_count
puts "One year passes: "
orange.one_year_passes

puts "********************************"

print "Height: "
orange.height
print "Number of Oranges: "
orange.orange_count
print "Pick an Orange: "
orange.pick_an_orange
print "Number of Oranges: "
orange.orange_count
puts "One year passes: "
orange.one_year_passes
