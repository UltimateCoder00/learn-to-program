# Extend the built-in classes. How about making your shuffle method
# on page 90 an array method? Or how about making factorial an
# integer method? 4.to_roman, anyone? In each case, remember to
# use self to access the object the method is being called on (the 4 in
# 4.to_roman).

class Array
  def shuffle
    if self.length <= 0
      self
    end

    rand_array = []

    while self.length > 0
      y = rand(self.length)
      rand_array.push self[y]
      self.delete_at(y)
    end

    rand_array
  end
end

class Integer
  def factorial
    if self == 1
      self
    else
      self * (self - 1).factorial
    end
  end

  def to_roman
    roman = ''

    roman = roman + 'M' * (self / 1000)
    roman = roman + 'D' * (self % 1000 / 500)
    roman = roman + 'C' * (self % 500 / 100)
    roman = roman + 'L' * (self % 100 / 50)
    roman = roman + 'X' * (self % 50 / 10)
    roman = roman + 'V' * (self % 10 / 5)
    roman = roman + 'I' * (self % 5 / 1)
  end
end

puts [1,2,3,4,5,6,7,8,9].shuffle
puts
puts 3.factorial
puts
puts 98.to_roman
