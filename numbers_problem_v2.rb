# Do the following three times:

3.times {

# Ask the user to input a positive integer value

puts "Please enter your positive number:  "

user_input = gets.chomp.to_i

# If the number is greater than or equal to 20, display a message to share.
if user_input >= 20
  puts "Your number is greater then or equal 20!"
# If the number is less than or equal to 20, display a message to share.
else
   user_input < 20
   puts "Your number is less then 20!"

end
}
puts "Thank you for participation!"
