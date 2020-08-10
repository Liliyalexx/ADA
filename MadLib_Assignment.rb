#Create a MadLib program that accepts input from the user for the MadLib

puts "Welcome to my MadLib program. Please enter in your information below:"

name = ask ("\nName:") 
tv_show = ask ("Show(singular):")
adjective = ask ("Adjective:")
janre = ask ("Janre:")
noun_plural = ask ("Plural noun:")
actor = ask ("\nName:")
time_of_day = ask ("Time of day:")
verb = ask ("Present-tense verb:")
verb_past = ask("Past-tense verb:")
color = ask ("Color:")
number = ask("Number: ").to_i

# Continuosly prompts user from integer if the user entere words (or 0) instead of a number value greater than 0
while
  number == 0
  number = ask ("An actual number, please").to_i
end

# Prints MadLib based on the user's Input
puts "\nI just heard the best feedback about #{tv_show}."
puts "I love almost all #{janre} films."
puts "The author is #{adjective} in writing the detectives and he was awarded as number #{number} in the world in this field."
puts "I just #{verb_past}, and then took #{color} pencil and draw my cat."
puts "I would #{verb} to my favorite place where I could #{verb} time with my fasmily."
puts "We love #{time_of_day.upcase} when #{name} and I can #{verb} our #{adjective} #{tv_show} with our favorite #{actor.upcase}."
puts "#{actor}'s favorite color is #{color} and he always has this #{color} in his outfit."
puts "#{time_of_day} is our #{adjective} time to go for skiing with bright #{color.capitalize} lights. "
puts "#{name} and other #{number}#{noun_plural} were watching #{tv_show.downcase} for two hours. "
