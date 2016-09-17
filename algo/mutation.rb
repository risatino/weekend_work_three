# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)
  base_word = base_word.split(//).sort
  mutation = mutation.split(//).sort
  x = base_word & mutation
  if x == mutation
    true
  else
    false
  end
end

mutation?("burly", "ruby")

# counter_var = 0

# def mutation?(base_word, mutation)
#   base_word.split.each do |letter|
#     counter_var += 1
#   end
# end

# if base_word.split == mutation.split
#   else base_word != mutation
# end

# split the strings (from arguments)
# set a counter variable to start at 0
# looped each letter in the mutation_array
# check the mutation letter == mutation.length
#
#.split breaks into strings in a new array
#.join arrays

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end