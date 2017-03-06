# Interactive baby dragon. Write a program that lets you enter commands
# such as feed and walk and calls those methods on your
# dragon. Of course, since you are inputting just strings, you will
# need some sort of method dispatch, where your program checks
# which string was entered and then calls the appropriate method.

class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10      # He' s full.
    @stuff_in_intestine = 0   # He doesn't need to go.

    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true

    3.times do
      if @asleep
        passage_of_time
      end

      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end

    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time

    if @asleep
      @asleep = false
      puts '...but wakes when you stop'
    end
  end

  private
  # "private" means that the methods defined here are
  # methods internal to the object. (You can feed your
  # dragon, but you can' t ask him whether he' s hungry.)

  def hungry?
    # Method names can end with "?".
    # Usually, we do this only if the method
    # returns true or false, like this:
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      # Move food from belly to intestine.
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else  # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end

      puts "#{@name} is starving! In desperation, he ate YOU!"

      exit # This quits the program.
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end

      puts "#{@name}'s stomuch grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end

      puts "#{@name} does the potty dance..."
    end
  end
end

puts "What would you like to call your baby dragon?"
name = gets.chomp
pet = Dragon.new name

while true
  puts
  puts "Commands: feed, toss, walk, rock, put to bed, exit"
  command = gets.chomp

  if command == 'exit'
    exit
  elsif command == 'feed'
    pet.feed
  elsif command == 'toss'
    pet.toss
  elsif command == 'walk'
    pet.walk
  elsif command == 'rock'
    pet.rock
  elsif command == 'put to bed'
    pet.put_to_bed
  else
    puts 'Huh? Please type feed, toss, walk, rock, put to bed or exit'
  end
end