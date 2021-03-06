# Errors

# var1 = 2
# var2 = '5'
# puts var1 + var2
# in `+': String can't be coerced into Fixnum (TypeError)

var1 = 2
var2 = '5'

puts var1.to_s + var2

puts '********************************'

puts var1.to_s + var2
puts var1 + var2.to_i

puts '********************************'

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your mooma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i

puts '********************************'

puts 20
puts 20.to_s
puts '20'

puts '********************************'

puts gets

puts '********************************'

puts 'Hello there, and what\'s your name?'
name = gets
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Please to meet you, ' + name + '.  :)'

puts '********************************'

puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Please to meet you, ' + name + '.  :)'

puts '********************************'

# Errors

#  my_birth_month = 'August'
#  my_birth_day = 3
#  puts my_birth_month + my_birth_day
#  <TypeError: can't convert Fixnum into String>
