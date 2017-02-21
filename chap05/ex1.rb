# Full name greeting. Write a program that asks for a person’s first name, then middle, and then last. Finally, it should greet the person using their full name.
puts 'Hello there, what is your first name?'
first_name = gets.chomp
puts 'Please now enter your middle name'
middle_name = gets.chomp
puts 'And finally please enter your surname'
last_name = gets.chomp
puts 'I am pleased to meet you ' + first_name + ' ' + middle_name + ' ' + last_name
