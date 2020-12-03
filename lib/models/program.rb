class Program < ActiveRecord::Base

    has_many :sessions
    has_many :exercises 
    has_many :users, through: :sessions


<<<<<<< HEAD
    # def show_program_details 
    #     puts "You selected #{self.name}! Get ready to: #{self.goal}!"
    #     sleep(2)
    #     puts "For this workout you will do: "
    #     self.exercises.map{ |exer| "#{rand(5..10)} " + exer.name + "!" }.join(" -- ")
    #     puts "Would you like to do this workout?"
    #     answer = new_prompt.select('', ["Y", "N"])
    #     if answer  == Y
    #         Session.create(;laisdfhj;aoskjfa;lsdkjf)
    #     else 
    #         home_page
    #     end
    # end


    def show_program_details(program) 
=======
    def add_workout(program) 
>>>>>>> 561953f7476b19fb7a33801f811da60490d8569d
        puts "You selected #{program.name}! Get ready to: #{program.goal}!"
        sleep(2)
        puts "For this workout you will do: "
        program.exercises.map{ |exer| "#{rand(5..10)} " + exer.name + "!" }.join(" -- ")
        Session.create(user_id: User.first.id, program_id: program.id, duration: rand(30..60))
    end
<<<<<<< HEAD
end 
=======
end
###  This code will determine the argument for #add_workout ### beginner_hiit = Program.all.find { |prog| prog.name == "Beginner HIIT"}

    
>>>>>>> 561953f7476b19fb7a33801f811da60490d8569d
