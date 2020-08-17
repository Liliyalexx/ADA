# Do the following three times
3.times {

# Ask the user to input a positive integer value
  print "Please enter the positive number: "

# Convert the user input to an integer
# Save the value in a variable
while user_input = gets.to_i
if user_input.is_a? Integer
puts "your number is #{user_input}"
break
else
print "Think of a number "
end
end
}

# Add 20 to each of the three numbers and print this new value for each to the console.
print "Please enter the positive number: "
while user_input = gets.to_i
  if user_input.is_a? Integer
    puts "your number is #{user_input+20}"
    break
  else
    print "Think of a number "
  end
end
