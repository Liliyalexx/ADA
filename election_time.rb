#To create an electronic election program that tracks votes, total votes, and determines a winner.
#Create an election program that accepts input from the user and outputs the winner of the election
election_candidates = {}
list = []
votes_total = []
winners = []

def ask (question, kind = "string")
  print question + " "
  answer = gets.chomp
  return answer

end

def linebreak
  puts "--------------------------------------"
end

puts "Welcome to the election voting program!"

candidates_quantity = ask("\nHow many candidates are running? >")
candidates_quantity.to_i.times do |i|
candidate_name =  ask("\nName of candidate #{i + 1}: ")
list << candidate_name
election_candidates["#{candidate_name.upcase}"] = Array.new
end
puts
vouters_number = ask("How many vouters? >")

vouters_number.to_i.times do |i|
vote = ask("Vote # #{i + 1}: ")
 if list.include? vote
  (election_candidates["#{vote.upcase}"] ||= []) << 1.to_i
  else
    list << vote
    election_candidates["#{vote.upcase}"] = Array.new
    (election_candidates["#{vote.upcase}"] ||=[]) << 1.to_i
  end
end

print linebreak

#Outputs the winner of the election

puts "\nElection Results..."
puts "\nVote Summary:"
puts " "

#Consider how to handle more than 3 candidates
list.each do |name|
  votes_total << election_candidates[name.upcase].sum
  in_total = "#{name} - #{election_candidates[name.upcase].sum} vote"

  #Handle grammar of vote summary saying vote or votes appropriately
   if election_candidates[name.upcase].sum > 1
    in_total << "s"
   end
   puts in_total
  end

  #Consider how to handle more than 10 votes
  i=0
  votes_total.each do |total|
    if total ==votes_total.max
      winners << list[i]
    end
    i += 1
  end

 #Handle ties for a winner appropriately
  win_ner = "\nWinner"
  if winners.count > 1
     win_ner << "S:"
  else
     win_ner << ":"
  end

  puts  win_ner
  winners.each do |item|
    puts "#{item}"
  end

  puts linebreak
