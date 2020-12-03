
Program.destroy_all
User.destroy_all
Session.destroy_all
Exercise.destroy_all

#users 

eric = User.create(username:"Eric", password:"eric123")
jallen = User.create(username:"Jallen", password:"jallen123")
rianna = User.create(username:"Rianna", password:"rianna123")
caryn = User.create(username:"Caryn", password:"caryn123")
mai = User.create(username:"Mai", password:"mai123")
jacob = User.create(username:"Jacob", password:"jacob123")
jenna = User.create(username:"Jenna", password:"jenna123")
amy = User.create(username:"Amy", password:"amy123")
nathan = User.create(username:"Nathan", password:"nathan123")
ashley = User.create(username:"Ashley", password:"ashley123")
kyle = User.create(username:"Kyle", password:"kyle123")
amanda = User.create(username: "Amanda", password:"amanda123")
billy = User.create(username: "Billy", password:"billy123")
bobby = User.create(username: "Bobby", password:"bobby123")
shrek = User.create(username: "Shrek", password:"shrek123")
donkey = User.create(username: "Donkey", password:"donkey123")
spongebob = User.create(username: "Spongebob", password:"spongebob123")
patrick = User.create(username: "Patrick", password:"patrick123")
sandy = User.create(username: "Sandy", password:"sandy123")
squidward = User.create(username: "Squidward", password:"squidward123")

#programs

advanced_hiit = Program.create(name: "Advanced HIIT", goal: "All out fat-burner", difficulty: "Advanced")
beginner_yoga = Program.create(name: "Beginner Yoga", goal: "Improve Flexibility", difficulty: "Beginner")
intermediate_weights = Program.create(name: "Intermediate Weight-Training", goal: "Build muscle without straining yourself", difficulty: "Intermediate")
beginner_hiit = Program.create(name: "Beginner HIIT", goal: "Learn HIIT training", difficulty: "Beginner")
intermediate_hiit = Program.create(name: "Intermediate HIIT", goal: "Step up your HIIT game", difficulty: "Intermediate")
intermediate_yoga = Program.create(name: "Intermediate Yoga", goal: "Increase Mindfulness", difficulty: "Intermediate")
advanced_yoga = Program.create(name: "Advanced_yoga", goal: "Become a Master Yogi", difficulty: "Advanced")
beginner_weights = Program.create(name: "Beginner Weight-Training", goal: "Learn the basics of weight-training", difficulty: "Beginner")
advanced_weights = Program.create(name: "Advanced Weight-Training", goal: "Train for Mr./Ms. Olympia", difficulty: "Advanced")
# basic_spin_class = Program.create(name: "Basic Spin Class", goal: "Increase cardio and have fun", difficulty: "Beginner")
# pro_spin_class = Program.create(name: "Pro Spin Class", goal: "Train for the Tour de France", difficulty: "Advanced")
# basic_swimming_class = Program.create(name: "Basic Swim Class", goal: "Low-impact workout to learn swimming basics", difficulty: "Beginner")
# pro_swimming_class = Program.create(name: "Pro Swim Class", goal: "Improve your speed and endurance in the pool", difficulty: "Advanced")
# basic_cardio = Program.create(name: "Basic Cardio", goal: "Increase your cardiovascular Endurance", difficulty: "Beginner")
# pro_cardio = Program.create(name: "Intermediate HIIT", goal: "Become a Cardio Ninja", difficulty: "Advanced")


#sessions

Session.create(user_id: eric.id, program_id: beginner_hiit.id, duration:30)
Session.create(user_id: jallen.id, program_id: beginner_weights.id, duration:30)
Session.create(user_id: rianna.id, program_id: beginner_yoga.id, duration:30)
Session.create(user_id: caryn.id, program_id: intermediate_hiit.id, duration:45)

Session.create(user_id: mai.id, program_id: advanced_weights.id, duration:60)
Session.create(user_id: jacob.id, program_id: advanced_yoga.id, duration:60)
Session.create(user_id: jenna.id, program_id: advanced_weights.id, duration:60)
Session.create(user_id: amy.id, program_id: intermediate_weights.id, duration:45)
Session.create(user_id: kyle.id, program_id: intermediate_yoga.id, duration:45)
Session.create(user_id: nathan.id, program_id: beginner_hiit.id, duration:30)
Session.create(user_id: spongebob.id, program_id: beginner_yoga.id, duration:30)
Session.create(user_id: shrek.id, program_id: advanced_hiit.id, duration:60)
Session.create(user_id: donkey.id, program_id: advanced_hiit.id, duration: 60)
Session.create(user_id: sandy.id, program_id: intermediate_hiit.id, duration:45)
Session.create(user_id: eric.id, program_id: beginner_hiit.id, duration:30)
Session.create(user_id: squidward.id, program_id: intermediate_weights.id, duration:45)
Session.create(user_id: patrick.id, program_id: intermediate_yoga.id, duration:45)
Session.create(user_id: billy.id, program_id: beginner_weights.id, duration:30)

Session.create(user_id: bobby.id, program_id: advanced_weights.id, duration:60)
Session.create(user_id: mai.id, program_id: advanced_yoga.id, duration:60)
Session.create(user_id: jacob.id, program_id: intermediate_yoga.id, duration:45)
Session.create(user_id: ashley.id, program_id: beginner_hiit.id, duration:30)
Session.create(user_id: mai.id, program_id: weight.id, duration:45)
Session.create(user_id: jacob.id, program_id: beginner_hiit.id, duration:30)
Session.create(user_id: caryn.id, program_id: intermediate_hiit.id, duration:45)


#exercises

# HIIT WORKOUTS 
Exercise.create(name:"Push-ups", program_id: beginner_hiit.id)
Exercise.create(name:"Jumping Jacks", program_id: beginner_hiit.id)
Exercise.create(name:"Sit-ups", program_id: beginner_hiit.id)

Exercise.create(name:"Push-ups", program_id: intermediate_hiit.id)
Exercise.create(name:"Jumping Jacks", program_id: intermediate_hiit.id)
Exercise.create(name:"Sit-ups", program_id: intermediate_hiit.id)
Exercise.create(name:"Pull-ups", program_id: intermediate_hiit.id)
Exercise.create(name:"Plank Jacks", program_id: intermediate_hiit.id)

Exercise.create(name:"Push-ups", program_id: advanced_hiit.id)
Exercise.create(name:"Jumping Jacks", program_id: advanced_hiit.id)
Exercise.create(name:"Sit-ups", program_id: advanced_hiit.id)
Exercise.create(name:"Pull-ups", program_id: advanced_hiit.id)
Exercise.create(name:"Plank Jacks", program_id: advanced_hiit.id)
Exercise.create(name:"Air Squats", program_id: advanced_hiit.id)
Exercise.create(name:"Burpees", program_id: advanced_hiit.id)
Exercise.create(name:"High Knees", program_id: advanced_hiit.id)
Exercise.create(name:"Goblet Squats", program_id: advanced_hiit.id)

# YOGA WORKOUTS
Exercise.create(name:"Downward Dog Pose", program_id: beginner_yoga.id)
Exercise.create(name:"Warrior Pose", program_id: beginner_yoga.id)
Exercise.create(name:"Happy Baby Pose", program_id: beginner_yoga.id)

Exercise.create(name:"Downward Dog Pose", program_id: intermediate_yoga.id)
Exercise.create(name:"Warrior Pose", program_id: intermediate_yoga.id)
Exercise.create(name:"Happy Baby Pose", program_id: intermediate_yoga.id)
Exercise.create(name:"Lotus Pose", program_id: intermediate_yoga.id)
Exercise.create(name:"Camel Pose", program_id: intermediate_yoga.id)

Exercise.create(name:"Downward Dog Pose", program_id: advanced_yoga.id)
Exercise.create(name:"Warrior Pose", program_id: advanced_yoga.id)
Exercise.create(name:"Happy Baby Pose", program_id: advanced_yoga.id)
Exercise.create(name:"Lotus Pose", program_id: advanced_yoga.id)
Exercise.create(name:"Camel Pose", program_id: advanced_yoga.id)
Exercise.create(name:"Pavana Muktasana", program_id: advanced_yoga.id)
Exercise.create(name:"Adho Mukha Shavasana", program_id: advanced_yoga.id)
Exercise.create(name:"Shavasana", program_id: advanced_yoga.id)
Exercise.create(name:"Balasana", program_id: advanced_yoga.id)

# WEIGHT TRAIINING WORKOUTS 
Exercise.create(name:"Curls", program_id: beginner_weights.id)
Exercise.create(name:"Benchpress", program_id: beginner_weights.id)
Exercise.create(name:"Shoulder Shrugs", program_id: beginner_weights.weight.id)

Exercise.create(name:"Curls", program_id: intermediate_weights.id)
Exercise.create(name:"Benchpress", program_id: intermediate_weights.id)
Exercise.create(name:"Shoulder Shrugs", program_id: intermediate_weights.id)
Exercise.create(name:"Squats", program_id: intermediate_weights.id)
Exercise.create(name:"Deadlift", program_id: intermediate_weights.id)

Exercise.create(name:"Curls", program_id: advanced_weights.id)
Exercise.create(name:"Benchpress", program_id: advanced_weights.id)
Exercise.create(name:"Shoulder Shrugs", program_id: advanced_weights.id)
Exercise.create(name:"Squats", program_id: advanced_weights.id)
Exercise.create(name:"Deadlift", program_id: advanced_weights.id)
Exercise.create(name:"Overhead Press", program_id: advanced_weights.id)
Exercise.create(name:"Upright Row", program_id: advanced_weights.id)
Exercise.create(name:"Split Squat", program_id: advanced_weights.id)
Exercise.create(name:"Farmer's Walk", program_id: advanced_weights.id)

# # SPIN CLASS WORKOUTS

# Exercise.create(name:"Warm Up", program_id: basic_spin_class.id)
# Exercise.create(name:"Sprints", program_id: basic_spin_class.id)
# Exercise.create(name:"Cool Down", program_id: basic_spin_class.id)

# Exercise.create(name:"Warm Up", program_id: pro_spin_class.id)
# Exercise.create(name:"Hill-Climbers", program_id: pro_spin_class.id)
# Exercise.create(name:"Sprints", program_id: pro_spin_class.id)
# Exercise.create(name:"Hill-Climbers", program_id: pro_spin_class.id)
# Exercise.create(name:"Sprints", program_id: pro_spin_class.id)
# Exercise.create(name:"Cool Down", program_id: pro_spin_class.id)


# # SWIM CLASS WORKOUTS

# Exercise.create(name:"Doggy Paddle", program_id: advanced_weights.id)
# Exercise.create(name:"Freestyle", program_id: advanced_weights.id)
# Exercise.create(name:"Doggy Paddle", program_id: advanced_weights.id)

# Exercise.create(name:"Freestyle", program_id: advanced_weights.id)
# Exercise.create(name:"Butterfly", program_id: advanced_weights.id)
# Exercise.create(name:"Backstroke", program_id: advanced_weights.id)
# Exercise.create(name:"Freestyle", program_id: advanced_weights.id)
# Exercise.create(name:"Butterfly", program_id: advanced_weights.id)
# Exercise.create(name:"Backstroke", program_id: advanced_weights.id)


# # CARDIO WORKOUTS 

# Exercise.create(name:"Plank Hold", program_id: advanced_weights.id)
# Exercise.create(name:"Farmer's Walk", program_id: advanced_weights.id)
# Exercise.create(name:"Farmer's Walk", program_id: advanced_weights.id)

# Exercise.create(name:"Farmer's Walk", program_id: advanced_weights.id)
# Exercise.create(name:"Farmer's Walk", program_id: advanced_weights.id)
# Exercise.create(name:"Farmer's Walk", program_id: advanced_weights.id)
# Exercise.create(name:"Farmer's Walk", program_id: advanced_weights.id)
# Exercise.create(name:"Farmer's Walk", program_id: advanced_weights.id)
# Exercise.create(name:"Farmer's Walk", program_id: advanced_weights.id)




puts "Data Seeded!"