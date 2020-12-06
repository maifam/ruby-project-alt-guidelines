class User < ActiveRecord::Base

    has_many :sessions
    has_many :programs, through: :sessions

    attr_reader :prompt

    def initialize 
        @prompt = TTY::Prompt.new
    end 
    
    def self.login_user
        puts "Please enter your username"
        user_name = gets.chomp
        userName = User.find_by(username: user_name)

        if userName == nil 
            puts "Hmm, that username doesn't seem to exist. Please re-enter username or Register Now"
        elsif user_name.empty?
            puts "You have to enter something for a username!"
            self.login_user 
        else
            puts "Please enter your password"
            pass_word = gets.chomp
            passWord = User.find_by(password: pass_word)
            if passWord == nil 
                puts "Wrong password, please try to log in again"
                self.login_user
            else 
                passWord
            end
        end
    end 

    def self.register_user 
        puts "Create a username:"
        user_name = gets.chomp
        user = User.find_by(username: user_name)

        if user 
            puts "That username is not available. Please try a different username."
            self.register_user
        elsif user_name.length == 0 || user_name == " "
            puts "You have to enter something for a username!"
            self.register_user
        else 
            puts "Please enter a password"
            pass_word = gets.chomp
            if pass_word.length == 0
                puts "Invalid Password!"
                self.register_user
            else
                User.create(username: user_name, password: pass_word)
            end
        end 
    end
    
    def show_past_sessions
        puts "These are your past workout sessions, #{self.username}!"
        puts
        self.sessions.each_with_index do |session, idx|
            puts "#{idx + 1}) Previously, you did a(n) #{session.program.name} for a total of #{session.duration} minutes!"
        end
    end
end 