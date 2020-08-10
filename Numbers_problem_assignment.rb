
# Do the following three times
3.times do 

# Ask the user to input a positive integer value 
  puts "Enter positive number " + (i+1).to_s +  ":"
    i +=1
    n = gets.chomp

# Convert the user input to an integer 
    num = n.to_i
# Save the value in a variable 
    user_input = gets
    
  end
end


# Add 20 to each of the three numbers and print this new value for each to the console. 
3.times do
  puts "Twenty added to the numbers you entered gives us" + (i).to_s + ":"
  your_number = rand(x)
  output << your_number.to_i

  puts output + 20

  end
end



