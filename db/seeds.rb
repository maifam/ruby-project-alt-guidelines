
Program.destroy_all
User.destroy_all
Session.destroy_all
Exercise.destroy_all

#users 

eric = User.create(username:"EK", password:"eric123")
jallen = User.create(username:"JM", password:"jallen123")
rianna = User.create(username:"RC", password:"rianna123")
caryn = User.create(username:"CM", password:"caryn123")

#programs

hiit = Program.create(name: "HIIT", goal: "Leaning Out", difficulty: "Advanced")
yoga = Program.create(name: "Yoga", goal: "Flexibility", difficulty: "Beginner")
weight = Program.create(name: "Weight-Training", goal: "Muscle-building", difficulty: "Intermediate")

#sessions

Session.create(user_id: eric.id, program_id: hiit.id, duration:30)
Session.create(user_id: jallen.id, program_id: yoga.id, duration:20)
Session.create(user_id: rianna.id, program_id: hiit.id, duration:30)
Session.create(user_id: caryn.id, program_id: weight.id, duration:45)


#exercises

Exercise.create(name:"Push-up", program_id: hiit.id)
Exercise.create(name:"Jump-rope", program_id: hiit.id)
Exercise.create(name:"Sit-up", program_id: hiit.id)
Exercise.create(name:"Downward Dog", program_id: yoga.id)
Exercise.create(name:"Warrior", program_id: yoga.id)
Exercise.create(name:"Happy Baby", program_id: yoga.id)
Exercise.create(name:"Curls", program_id: weight.id)
Exercise.create(name:"Benchpress", program_id: weight.id)
Exercise.create(name:"Kettle Bell Swings", program_id: weight.id)


puts "Data Seeded!"