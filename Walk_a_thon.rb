walkers_number = Array.new

def ask (question = "string")
  print question + " "
  answer = gets.chomp
  return answer
end
def linebreak
  puts "*" * 50
end

walkers_number = ask ("How many people: ")=gets.to_i
walkers_goal = ask("What is your earning goal for the walk-a-thon:").to_f
puts linebreak

i=0
walkers_number.times do loop
  name = ask("What is your name:")
  laps = ask("Number of laps you have completed?").to_i
  earned_per_lap = ask("Enter amount earned per completed lap:").to_f

  earned = laps * earned_per_lap
  puts "\t\t ---> Earned $#{'%.2f' % earned}"
  walkers_total[i] = {
    name:name,
    laps:laps,
    earned:earned.to_f
  }

  i+=1
end
in_total = walkers_number.sum {|h| h[:earned]}

puts "\nIN TOTAL: $#{'%.2f' % in_total}"

print "YOU MET YOUR GOAL?"
  if in_total >= goal

puts "Yey yes!"
difference = in_total - goal
if in_total == goal
puts "We won, with $#{'%.2f' % difference} to spend."
  else puts "We did it by $#{'%.2f' % difference}."
end

else puts "Sorry!"
  difference = goal - in_total
  puts "It's really bad, hah by $#{'%.2f' % difference}."
end

puts linebreak
