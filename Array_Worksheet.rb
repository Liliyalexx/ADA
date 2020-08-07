1.

random_data = ["b", "a", 1, 3, 99, "c"];
puts random_data[4] # output:99
puts random_data[2] + 10 # output: 1+10=11
puts random_data[1] + random_data[0] # output: ab


2
numeric_data = []
numeric_data << 2 # output: [2]
numeric_data << 4 # output:[2,4]
numeric_data << 6 # output: [2,4,6]
numeric_data << 8 # output: [2,4,6,8]
puts numeric_data.length # output:4
puts numeric_data[1] # output:4

3

my_array = ["dog", 5, "cat", 2, "horse", 1]
puts my_array[6] # output:
puts my_array.last # output: 1


4
numbers = Array.new(3) #[nil, nil, nil]
puts numbers.length # output:3
puts numbers.first # output:


5
student_names = Array.new(24, "Student") # Student 24 times
student_names << "Test" # output: ["Student", "Student", "Student", "Student", "Student",
#"Student","Student","Student","Student","Student","Student","Student","Student",
#"Student","Student","Student","Student","Student","Student","Student","Student",
#"Student", "Student","Student", "Test"]
student_names << "Grumpy Cat" # output:["Student", "Student", "Student", "Student", "Student",
#"Student","Student","Student","Student","Student","Student","Student","Student",
#"Student","Student","Student","Student","Student","Student","Student","Student",
#"Student", "Student","Student", "Test", "Grumpy Cat"]
puts student_names[1] # output: Student
puts student_names[25] # output: Grumpy Cat
