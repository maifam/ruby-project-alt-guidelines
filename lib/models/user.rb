class User < ActiveRecord::Base

    has_many :sessions
    has_many :programs, through: :sessions
    
    def self.login_user
        puts "Please enter your username"
        user_name = gets.chomp
        puts "Please enter your password"
        pass_word = gets.chomp

        user = User.find_by(username:user_name, password:pass_word)

        if user == nil 
            puts "There doesn't seem to be a user associated with that username or password. Please try again."
        else 
            user 
        end 
    end 

    def self.register_user 
        puts "Please create a username:"
        user_name = gets.chomp
        puts "Please enter a password:"
        pass_word = gets.chomp

        user = User.find_by(username: user_name)
        
        if user 
            puts "That username is not available. Please try a different username."
        else 
            User.create(username: user_name, password: pass_word)
        end 
    end
    
    def show_past_sessions
        puts "These are your past workout sessions #{self.username}!"
        self.sessions.each_with_index do |session, idx|
            puts "#{idx + 1}) Previously, you did a(n) #{session.program.name} for a total of #{session.duration} minutes!"
        end
    end

    # def beginner_list 
    #     Program.all.select {|prog| prog.difficulty = "Beginner"}
    # end 

end 