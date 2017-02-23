# “99 Bottles of Beer on the Wall.” Write a program that prints out the lyrics to that beloved classic, “99 Bottles of Beer on the Wall.”

num_at_start = 99

num_now = num_at_start

while num_now > 1
  puts num_now.to_s + ' bottles of beer on the wall, ' + num_now.to_s + ' bottles of beer!'
  num_now = num_now - 1

  puts 'Take one down, pass it around, ' +
  num_now.to_s + ' bottles of beer on the wall!'
end

puts "1 bottle of beer on the wall, 1 bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"
