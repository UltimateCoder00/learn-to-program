def sort some_array # This "wraps" recursive_sort.
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end

  word = unsorted_array[0]

  unsorted_array.each do |element|
    if element < word
      word = element
    end
  end

  unsorted_array.delete(word)
  sorted_array.push word

  recursive_sort unsorted_array, sorted_array
end

word_array = ['messi','ronaldo','bale','costa','hazard','luiz','pedro']

puts sort word_array
