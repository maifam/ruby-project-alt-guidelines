class Program < ActiveRecord::Base

    has_many :sessions
    has_many :exercises 
    has_many :users, through: :sessions



    def self.beginner_hiit_session 
        self.all.find { |prog| prog.name == "Beginner HIIT"}
    end 

    def self.intermediate_hiit_session 
        self.all.find { |prog| prog.name == "Intermediate HIIT"}
    end 

    def self.advanced_hiit_session 
        Program.all.find { |prog| prog.name == "Advanced HIIT"}
    end 

    def self.beginner_yoga_session 
        Program.all.find { |prog| prog.name == "Beginner Yoga"}
    end 

    def self.intermediate_yoga_session 
        Program.all.find { |prog| prog.name == "Intermediate Yoga"}
    end 

    def self.advanced_yoga_session 
        Program.all.find { |prog| prog.name == "Advanced Yoga"}
    end 

    def self.beginner_weight_session 
        Program.all.find { |prog| prog.name == "Beginner Weight-Training"}
    end 

    def self.intermediate_weight_session 
        Program.all.find { |prog| prog.name == "Intermediate Weight-Training"}
    end 

    def self.advanced_weight_session 
        Program.all.find { |prog| prog.name == "Advanced Weight-Training"}
    end 

end 

###  This code will determine the argument for #add_workout ### beginner_hiit = Program.all.find { |prog| prog.name == "Beginner HIIT"}

    
