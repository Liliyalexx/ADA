

puts "\nWelcome to Computer Candy Machine!\n\n\n"
print "How much money do you have? > "
your_cash = gets.chomp().to_f

while your_cash < 0
  print "Please enter a positive number : "
  your_cash = gets.chomp().to_f
end

#Ask the user how much money they have, assume that the $ symbol is part of the prompt (the user doesn't have to enter it)
puts "\n$ #{your_cash}Ask? Let's see what we have for you? \n\n"

price_per_candy = {'1' => 0.55,
        '2' => 0.45,
        '3' => 0.85,
        '4' => 0.68,
        '5' => 0.50
}
#Display all candy options and their costs (even if the user cannot afford the candy)
puts "<<<<< Our Candy List >>>>> \n\n"
puts "1 $ #{price_per_candy["1"]} Crusty-Crust\n"
puts "2 $ #{price_per_candy["2"]} Choco-nut\n"
puts "3 $ #{price_per_candy["3"]} Sweet and Salty\n"
puts "4 $ #{price_per_candy["4"]} Chips\n"
puts "5 $ #{price_per_candy["5"]} Sweet hot dog\n\n\n"



print "What do you want? > "
your_candy = gets.chomp()


#Decide whether the user can afford the candy or not, if they can't, tell them so, if they can, calculate and display their change
while price_per_candy[your_candy] == nil
puts"\nEnter a value a-e. > "
your_candy = gets.chomp().capitalize
end

if your_cash < price_per_candy[your_candy]
  puts "\nSorry, you need more cash"
else
  puts "\nThank you for your purchase! Please don't forget your change,
  $#{your_cash-price_per_candy[your_candy].round(2)}. \nSee you soon!"
end
