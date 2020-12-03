class Program < ActiveRecord::Base

    has_many :sessions
    has_many :exercises 
    has_many :users, through: :sessions


    def show_program_details 
        puts "You selected #{self.name}! Get ready to: #{self.goal}!"
        sleep(2)
        puts "For this workout you will do: "
        self.exercises.map{ |exer| "#{rand(5..10)} " + exer.name + "!" }.join(" -- ")
        puts "Would you like to do this workout?"
        answer = new_prompt.select('', ["Y", "N"])
        if answer  == Y
            Session.create(;laisdfhj;aoskjfa;lsdkjf)
        else 
            home_page
        end
    end

end 