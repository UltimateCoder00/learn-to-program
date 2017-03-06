# Better program logger. The output from that last logger was kind
# of hard to read, and it would just get worse the more you used it.
# It would be so much easier to read if it indented the lines in the
# inner blocks. So, you’ll need to keep track of how deeply nested
# you are every time the logger wants to write something. To do
# this, use a global variable, which is a variable you can see from
# anywhere in your code. To make a global variable, just precede
# your variable name with $, like so: $global, $nesting_depth, and
# $big_top_pee_wee. In the end, your logger should output code like this:

# Beginning "outer block"...
#   Beginning "some little block"...
#     Beginning "teeny-tiny block"...
#     ..."teeny-tiny block" finished, returning:
#     lots of love
#   ..."some little block" finished, returning:
#   42
#   Beginning "yet another block"...
#   ..."yet another block" finished, returning:
#   I love Indian food!
# ..."outer block" finished, returning:
# true

$global_variable = 0

def log description, &block
  puts "  " * $global_variable + 'Beginning: "' + description.to_s + '"...'

  value = block.call
  puts "  " * $global_variable + '..."' + description + '" finished, returning:   '
  puts "  " * $global_variable + value.to_s
end

log 'outer block' do

  $global_variable = 1
  log 'some little block' do

    $global_variable = 2
    log 'teeny-tiny block' do
      'lots of love'
    end

    $global_variable = 1
    "#{2**5 + 10}"
  end

  $global_variable = 1
  log 'yet another block' do
    'I love Indian food!'
  end

  $global_variable = 0
  true
end
