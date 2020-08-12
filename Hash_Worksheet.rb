# Hash problems with hashes defined using hash rocket notation with keys as string:
1.
person = {
  "first_name" => "ada",
  "last_name" => "lovelace",
  "nickname" => "adie"
}

puts person.length #Output: 2
puts person["last_name"] #Output: lovelace



2.
animals = {
  "dog" => "canine",
  "cat" => "feline"
}
animals["cat"] = "feline"
puts animals["dog"] #Output: canine
puts animals["donkey"] #Output: undefined



3.
workout_summary = {
  "squats" => 99,
  "lunges" => 98,
  "yoga" => false
}
workout_summary["lunges"] = 101
puts workout_summary["lunges"] #Output: 101

4.
menu = {}
menu["ramen"] = "garlic tonkotsu"
menu["burger"] = "bleu sun"
menu["tea"] = "green"
puts menu.length #Output: 2
puts menu["burger"] #Output:bleu sun
puts menu["tater_tots"] #Output: undefined
# Hash problems with hashes using symbol notation:
#Output:

menu = {
"ramen" =>"galic tonkotsu",
"burger" => "bleu sun",
"tea" => "green"
}


5.
person = {
  first_name: "ada",
  last_name: "lovelace",
  nickname: "adie"
}

puts person.length #Output: 2
puts person[:last_name] #Output: 2

6.
human_being = {
  species: "Sapiens",
  genus: "Homo",
  tribe: "Hominini",
  meaning: "wise man"
}

puts human_being.length #Output: 3
puts "The only living species of genus #{human_being[:genus]} are #{human_being[:species]}." #Output "The only living species of genus Homo are Sapiens."
puts human_being[:meaning].length #Output: 1

7.
oatmeal_raisin = {
  gluten_free: false,
  dairy_free: true,
  non_gmo: true,
  vegan: true,
  allergens: "nuts"
}

puts oatmeal_raisin.length #Output: 4

if oatmeal_raisin[:dairy_free]
  puts "Oatmeal raisin cookies are dairy free." #Oatmeal raisin cookies are dairy free.
end

oatmeal_raisin[:allergens] += ", soy"
puts oatmeal_raisin[:allergens] #Output:  Nuts, soy oatmeal raisin cookies are allergens.

if !oatmeal_raisin[:gluten_free] || !oatmeal_raisin[:vegan]
  puts "The oatmeal raisin cookie is either not gluten free or not vegan." #Output: The oatmeal raisin cookie is either not gluten free or not vegan.
end
