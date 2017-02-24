# Table of contents, revisited. Rewrite your table of contents pro- gram on page 36. Start the program with an array holding all of the information for your table of contents (chapter names, page numbers, and so on). Then print out the information from the array in a beautifully formatted table of contents.

contents_array = []
contents_array.push 'Table of Contents'
contents_array.push 'Chapter 1: Getting Started'
contents_array.push 'Chapter 2: Numbers        '
contents_array.push 'Chapter 3: Letters        '

page_number = []
page_number.push 'page  1'
page_number.push 'page  9'
page_number.push 'page 13'

spaces = "              "

puts spaces + contents_array[0]
puts
puts contents_array[1] + spaces + page_number[0]
puts contents_array[2] + spaces + page_number[1]
puts contents_array[3] + spaces + page_number[2]
