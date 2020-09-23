

# Ask the user for the count of numbers.
# Do the following count number of times:

puts " Let's play a numbers game. How many numbers would you like to enter?"
number = gets.chomp.to_i

# Do the following count number of times:
number.times do
 puts "Please enter your positive number:  "
user_input = gets.chomp.to_i

# If the number is divisible by 3, display a message to share so and a different message otherwise.

if user_input % 3 == 0
  puts "#{user_input} is divisible by 3!"

else
  puts "Your number is not divisible by 3"
end
end
