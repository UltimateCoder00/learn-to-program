# Shuffle. Now that you’ve finished your new sorting algorithm, how about the opposite? Write a shuffle method that takes an array and returns a totally shuffled version. As always, you’ll want to test it, but testing this one is trickier: How can you test to make sure you are getting a perfect shuffle? What would you even say a perfect shuffle would be? Now test for it.

def shuffle sorted_array, shuffled_array
  if sorted_array.length <= 0
    return shuffled_array
  end

  random_array_index = rand(sorted_array.length)

  shuffled_array.push sorted_array[random_array_index]
  sorted_array.delete_at(random_array_index)  

  shuffle sorted_array, shuffled_array
end

sorted_array = [1,2,3,4,5,6,7,8,9]

puts shuffle sorted_array, []
