# Birthday helper! Write a program to read in names and birth dates
# from a text file. It should then ask you for a name. You type one
# in, and it tells you when that person’s next birthday will be (and,
# for the truly adventurous, how old they will be). The input file
# should look something like this:

# Christopher Alexander,  Oct 4, 1936
# Christopher Lambert,    Mar 29, 1957
# Christopher Lee,        May 27, 1922
# Christopher Lloyd,      Oct 22, 1938
# Christopher Pine,       Aug 3, 1976
# Christopher Plummer,    Dec 13, 1927
# Christopher Walken,     Mar 31, 1943
# The King of Spain,      Jan 5, 1938

# (That would be me Christopher Pine, not the young James T. Kirk;
# I don’t care when he was born.) You’ll probably want to break each
# line up and put it in a hash, using the name as your key and the
# date as your value. In other words: words:

# birth_dates['The King of Spain'] = 'Jan 5, 1938'

# (You can store the date in some other format if you prefer.)

# Though you can do it without this tip, your program might look
# prettier if you use the each_line method for strings. It works pretty
# much like each does for arrays, but it returns each line of the
# multiline string one at a time (but with the line endings, so you
# might need to chomp them). Just thought I’d mention it....

require 'date'

filename = "birth_dates.txt"
read_file = File.read(filename)

birth_dates = Hash.new
data_string_array = Array.new
line_count = 0

read_file.each_line do |x|
  data_string_array << x
end

data_string_array.each do |x|
  string = ''
  string2 = ''
  temp_string = x.chars

  temp_string.each do |x|
    if x != ','
      string << x
    else
      break
    end
  end

  string2 << temp_string[24] + temp_string[25] + temp_string[26] + " " + temp_string[28] + temp_string[29]
  string2 << ", " + temp_string[32] + temp_string[33] + temp_string[34] + temp_string[35]

  birth_dates[string] = string2
end

puts "Type a name"
reply = gets.chomp

date_of_birth = birth_dates[reply]

day = date_of_birth[4..5].to_i
month = Date::ABBR_MONTHNAMES.index(date_of_birth[0..2].to_s)
year = date_of_birth[8..11].to_i

age = ((Time.new - Time.local(year,month,day)) / (60 * 60 * 24 * 365 )).to_i
age = age
year += 1

puts "#{reply} is #{age} years old and has a birthday coming up on #{Time.local(year,month,day)}"
