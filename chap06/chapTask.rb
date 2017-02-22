puts('hello '.+ 'world')
puts((10.* 9).+ 9)

puts("***********************************")

puts self

puts("***********************************")

var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP  A magic spell?'

puts var1.reverse
puts var2.reverse
puts var3.reverse

puts var1
puts var2
puts var3

puts("***********************************")

# Error
# puts 'What is your full name?'
# name = gets.chomp
# puts 'Did you know there are ' + name.length + ' characters'
# puts 'in your name, ' + name + '?'
# in `+': no implicit conversion of Fixnum into String (TypeError)

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters'
puts 'in your name, ' + name + '?'

puts("***********************************")

puts 'Please enter your first name below'
first_name = gets.chomp
puts 'Now please enter your surname'
surname_name = gets.chomp
puts 'You have ' + (first_name.length + surname_name.length).to_s + ' characters in your name'

puts("***********************************")

letters = 'aAbBcDdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

puts("***********************************")

line_width = 50
puts(                'Old Mother Hubbard'.center(line_width))
puts(               'Sat in her cupboard'.center(line_width))
puts(        'Eating ger curds and whey,'.center(line_width))
puts(          'When along came a spider'.center(line_width))
puts(           'Who sat down beside her'.center(line_width))
puts('And scared her poor shoe dog away.'.center(line_width))

puts("***********************************")

line_width = 40
str = '--> text <--'
puts(str.ljust( line_width))
puts(str.center(line_width))
puts(str.rjust( line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))

puts("***********************************")

puts(5**2)
puts(5**0.5)
puts(7/3)
puts(7%3)
puts(365%7)

# Error
# puts(5-2).abs ==> 3
# puts(2-5).abs ==> 3
# in `<main>': undefined method `abs' for nil:NilClass (NoMethodError)

puts("***********************************")

puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(9999999999999999999999999999999999999))
puts('The weatherman said there is a')
puts(rand(101).to_s + '% chance of rain,')
puts('but you can never trust a weatherman.')

puts("***********************************")

srand(1976)
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand(1976)
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts("***********************************")

# Error
# puts(MATH::PI)
# puts(MATH::E)
# puts(MATH.cos(MATH::PI/3))
# puts(MATH.tan(MATH::PI/4))
# puts(MATH.log(MATH::E**2))
# puts((1 + MATH.sqrt(5))/2)
# in `<main>': uninitialized constant MATH (NameError)
