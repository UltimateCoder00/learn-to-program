# Angry boss. Write an angry boss program that rudely asks what you want. Whatever you answer, the angry boss should yell it back to you and then fire you.

puts 'What do you want?'
reply = gets.chomp.to_s
puts "WHADDAYA MEAN \"#{reply.upcase}\"?!? YOU\'RE FIRED!!"
