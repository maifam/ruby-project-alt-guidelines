class Program < ActiveRecord::Base

    has_many :sessions
    has_many :exercises 
    has_many :users, through: :sessions



    def self.beginner_hiit_session 
        Program.all.find { |prog| prog.name == "Beginner HIIT"}
    end 
end 

###  This code will determine the argument for #add_workout ### beginner_hiit = Program.all.find { |prog| prog.name == "Beginner HIIT"}

    
