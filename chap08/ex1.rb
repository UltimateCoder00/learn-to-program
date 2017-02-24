# Building and sorting an array. Write the program we talked about at the beginning of this chapter, one that asks us to type as manywords as we want (one word per line, continuing until we just press Enter on an empty line) and then repeats the words back to us in alphabetical order. Make sure to test your program thor- oughly; for example, does hitting Enter on an empty line always exit your program? Even on the first line? And the second? Hint: There’s a lovely array method that will give you a sorted version of an array: sort. Use it!

array = []

while true
  puts "Enter a word"
  word = gets.chomp
  if word == ''
    break
  else
    array.push word
  end
end

array.sort!

puts array
