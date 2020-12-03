class Program < ActiveRecord::Base

    has_many :sessions
    has_many :exercises 
    has_many :users, through: :sessions


    # def add_workout(program) 
    #     puts "You selected #{program.name}! Get ready to: #{program.goal}!"
    #     sleep(2)
    #     puts "For this workout you will do: "
    #     program.exercises.map{ |exer| "#{rand(5..10)} " + exer.name + "!" }.join(" -- ")
    #     Session.create(user_id: User.first.id, program_id: program.id, duration: rand(30..60))
    # end
end 

###  This code will determine the argument for #add_workout ### beginner_hiit = Program.all.find { |prog| prog.name == "Beginner HIIT"}

    
