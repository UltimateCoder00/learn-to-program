# Old-school Roman numerals. In the early days of Roman numer- als, the Romans didn’t bother with any of this new-fangled sub- traction “IX” nonsense. No sir, it was straight addition, biggest to littlest—so 9 was written “VIIII,” and so on. Write a method that when passed an integer between 1 and 3000 (or so) returns a string containing the proper old-school Roman numeral. In other words, old_roman_numeral 4 should return 'IIII'. Make sure to test your method on a bunch of different numbers. Hint: Use the inte- ger division and modulus methods on page 37.
# For reference, these are the values of the letters used:
# I =1 V=5 X=10 L=50 C=100 D=500 M=1000

def roman_numerals number
  roman_numerals = ''

  roman_numerals += 'M' * (number / 1000)
  number %= 1000

  roman_numerals += 'D' * (number / 500)
  number %= 500

  roman_numerals += 'C' * (number / 100)
  number %= 100

  roman_numerals += 'L' * (number / 50)
  number %= 50

  roman_numerals += 'X' * (number / 10)
  number %= 10

  roman_numerals += 'V' * (number / 5)
  number %= 5

  roman_numerals += 'I' * (number / 1)
  number %= 1

  roman_numerals
end

puts roman_numerals 5464
