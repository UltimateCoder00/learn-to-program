puts "Enter a starting year?"
starting_year = gets.chomp.to_i

puts "Enter an ending year?"
ending_year = gets.chomp.to_i

year = starting_year

puts "Here are the leap years between #{starting_year} and #{ending_year}:"
for i in starting_year..ending_year
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        puts year
      end
    else
      puts year
    end
  end

  year += 1
end
