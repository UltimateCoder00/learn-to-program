puts "What year were you born in?"
birth_year = gets.chomp.to_i

puts "What month were you born in?"
birth_month = gets.chomp.to_i

puts "What day were you born in?"
birth_day = gets.chomp.to_i

birthday = Time.local(birth_year,birth_month,birth_day)

years_old = ( (Time.new - birthday) / (60 * 60 * 24 * 365) ).to_i

spank = 1

while spank <= years_old
  puts "SPANK!"
  spank += 1
end
