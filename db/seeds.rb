
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
beginner_hiit = Program.create(name: "Beginner HIIT", goal: "learn the basics of HIIT training", difficulty: "Beginner")
intermediate_hiit = Program.create(name: "Intermediate HIIT", goal: "boost cardiovascular endurance", difficulty: "Intermediate")
advanced_hiit = Program.create(name: "Advanced HIIT", goal: "become a HIIT ninja", difficulty: "Advanced")
beginner_pilates = Program.create(name: "Beginner Pilates", goal: "improve flexibility", difficulty: "Beginner")
intermediate_pilates = Program.create(name: "Intermediate Pilates", goal: "increase strength and balance", difficulty: "Intermediate")
advanced_pilates = Program.create(name: "Advanced Pilates", goal: "become a master pilates practitioner", difficulty: "Advanced")
beginner_weights = Program.create(name: "Beginner Weight-Training", goal: "learn the basics of weight-training", difficulty: "Beginner")
intermediate_weights = Program.create(name: "Intermediate Weight-Training", goal: "build muscle without straining yourself", difficulty: "Intermediate")
advanced_weights = Program.create(name: "Advanced Weight-Training", goal: "train for the Mr./Ms. Olympia contest", difficulty: "Advanced")



#sessions

Session.create(user_id: eric.id, program_id: beginner_hiit.id, duration:30, time: Time.now)
Session.create(user_id: jallen.id, program_id: beginner_weights.id, duration:30, time: Time.now)
Session.create(user_id: rianna.id, program_id: beginner_pilates.id, duration:30, time: Time.now)
Session.create(user_id: caryn.id, program_id: intermediate_hiit.id, duration:45, time: Time.now)

Session.create(user_id: mai.id, program_id: advanced_weights.id, duration:60, time: Time.now)
Session.create(user_id: jacob.id, program_id: advanced_pilates.id, duration:60, time: Time.now)
Session.create(user_id: jenna.id, program_id: advanced_weights.id, duration:60, time: Time.now)
Session.create(user_id: amy.id, program_id: intermediate_weights.id, duration:45, time: Time.now)
Session.create(user_id: kyle.id, program_id: intermediate_pilates.id, duration:45, time: Time.now)
Session.create(user_id: nathan.id, program_id: beginner_hiit.id, duration:30, time: Time.now)
Session.create(user_id: spongebob.id, program_id: beginner_pilates.id, duration:30, time: Time.now)
Session.create(user_id: shrek.id, program_id: advanced_hiit.id, duration:60, time: Time.now)
Session.create(user_id: donkey.id, program_id: advanced_hiit.id, duration: 60, time: Time.now)
Session.create(user_id: sandy.id, program_id: intermediate_hiit.id, duration:45, time: Time.now)
Session.create(user_id: eric.id, program_id: beginner_hiit.id, duration:30, time: Time.now)
Session.create(user_id: squidward.id, program_id: intermediate_weights.id, duration:45, time: Time.now)
Session.create(user_id: patrick.id, program_id: intermediate_pilates.id, duration:45, time: Time.now)
Session.create(user_id: billy.id, program_id: beginner_weights.id, duration:30, time: Time.now)

Session.create(user_id: bobby.id, program_id: advanced_weights.id, duration:60, time: Time.now)
Session.create(user_id: mai.id, program_id: advanced_pilates.id, duration:60, time: Time.now)
Session.create(user_id: jacob.id, program_id: intermediate_pilates.id, duration:45, time: Time.now)
Session.create(user_id: ashley.id, program_id: beginner_hiit.id, duration:30, time: Time.now)
Session.create(user_id: mai.id, program_id: intermediate_weights.id, duration:45, time: Time.now)
Session.create(user_id: jacob.id, program_id: beginner_hiit.id, duration:30, time: Time.now)
Session.create(user_id: caryn.id, program_id: intermediate_hiit.id, duration:45, time: Time.now)


#exercises

# HIIT WORKOUTS 
Exercise.create(name:"Push-Ups", program_id: beginner_hiit.id)
Exercise.create(name:"Jumping Jacks", program_id: beginner_hiit.id)
Exercise.create(name:"Sit-Ups", program_id: beginner_hiit.id)

Exercise.create(name:"Push-Ups", program_id: intermediate_hiit.id)
Exercise.create(name:"Jumping Jacks", program_id: intermediate_hiit.id)
Exercise.create(name:"Sit-Ups", program_id: intermediate_hiit.id)
Exercise.create(name:"Pull-Ups", program_id: intermediate_hiit.id)
Exercise.create(name:"Plank Jacks", program_id: intermediate_hiit.id)

Exercise.create(name:"Push-Ups", program_id: advanced_hiit.id)
Exercise.create(name:"Jumping Jacks", program_id: advanced_hiit.id)
Exercise.create(name:"Sit-Ups", program_id: advanced_hiit.id)
Exercise.create(name:"Box Jumps", program_id: advanced_hiit.id)
Exercise.create(name:"Plank Jacks", program_id: advanced_hiit.id)
Exercise.create(name:"Air Squats", program_id: advanced_hiit.id)
Exercise.create(name:"Burpees", program_id: advanced_hiit.id)
Exercise.create(name:"High Knees", program_id: advanced_hiit.id)
Exercise.create(name:"Flutter Kicks", program_id: advanced_hiit.id)

# PILATES WORKOUTS
Exercise.create(name:"Roll Ups", program_id: beginner_pilates.id)
Exercise.create(name:"Leg Circles", program_id: beginner_pilates.id)
Exercise.create(name:"Spine Stretches", program_id: beginner_pilates.id)

Exercise.create(name:"V-Sits", program_id: intermediate_pilates.id)
Exercise.create(name:"Roll Ups", program_id: intermediate_pilates.id)
Exercise.create(name:"Butterflies", program_id: intermediate_pilates.id)
Exercise.create(name:"Leg Circles", program_id: intermediate_pilates.id)
Exercise.create(name:"Toe Taps", program_id: intermediate_pilates.id)

Exercise.create(name:"V-Sits", program_id: advanced_pilates.id)
Exercise.create(name:"Spine Stretches", program_id: advanced_pilates.id)
Exercise.create(name:"Toe Taps", program_id: advanced_pilates.id)
Exercise.create(name:"Corkscrews", program_id: advanced_pilates.id)
Exercise.create(name:"Leg Circles", program_id: advanced_pilates.id)
Exercise.create(name: "Reverse Crunches", program_id: advanced_pilates.id)
Exercise.create(name:"Swan Dives", program_id: advanced_pilates.id)
Exercise.create(name:"Standing Saws", program_id: advanced_pilates.id)
Exercise.create(name:"Roll Ups", program_id: advanced_pilates.id)

# WEIGHT TRAIINING WORKOUTS 
Exercise.create(name:"Curls", program_id: beginner_weights.id)
Exercise.create(name:"Benchpress", program_id: beginner_weights.id)
Exercise.create(name:"Shoulder Shrugs", program_id: beginner_weights.id)

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
Exercise.create(name:"Calf Raises", program_id: advanced_weights.id)
Exercise.create(name:"Split Squat", program_id: advanced_weights.id)
Exercise.create(name:"Farmer's Walk", program_id: advanced_weights.id)




puts "Data Seeded!"