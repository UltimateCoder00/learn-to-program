# Bigger, better favorite number. Write a program that asks for a per- son’s favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better favorite number. (Do be tactful about it, though.)
puts 'Enter your favorite number?'
fav_number = gets.chomp
fav_number = fav_number.to_i + 1
puts "#{fav_number} is a bigger and better favorite number"
