# Dictionary sort. Your sorting algorithm is pretty good, sure. But there was always that sort of embarrassing point you were hop- ing I’d just sort of gloss over, right? About the capital letters? Your sorting algorithm is good for general-purpose sorting, but when you sort strings, you are using the ordering of the charac- ters in your fonts (called the ASCII codes) rather than true dictio- nary ordering. In a dictionary, case (upper or lower) is irrelevant to the ordering. So, make a new method to sort words (something like dictionary_sort). Remember, though, that if I give your program words starting with capital letters, it should return words with those same capital letters, just ordered as you’d find in a dictio- nary.

def sort some_array # This "wraps" recursive_sort.
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end

  word = unsorted_array[0]

  unsorted_array.each do |element|
    if element.downcase < word
      word = element
    end
  end

  unsorted_array.delete(word)
  sorted_array.push word

  recursive_sort unsorted_array, sorted_array
end

word_array = ['messi','ronaldo','bale','Costa','hazard','luiz','pedro']

puts sort word_array
