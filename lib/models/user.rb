
class User < ActiveRecord::Base

    has_many :sessions
    has_many :programs, through: :sessions


    def self.login_user
        system 'clear'
        puts "Please enter your username"
        user_name = gets.chomp
        userName = User.find_by(username: user_name)

        if userName == nil 
            puts "Hmm, that username doesn't seem to exist. Please re-enter username or Register Now"
        elsif user_name.empty?
            puts "You have to enter something for a username!"
            self.login_user 
        else
            puts 'Please enter your password:'
            passWord = gets.chomp
            passWord = User.find_by(password: passWord)
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
            passWord = gets.chomp
            if passWord.length == 0
                puts "Invalid Password!"
                self.register_user
            else
                User.create(username: user_name, password: passWord)
            end
        end 
    end
    
    def show_past_sessions
        flashing_effect("Your past workout sessions, #{self.username} 💪")
        puts
        self.sessions.each_with_index do |session, idx|
            typing_effect("#{idx + 1}) #{session.program.name} for a total of #{session.duration} minutes on #{session.time.asctime}")
        end
    end

    def flashing_effect(string)
        5.times do
            print "\r#{ string }"
            sleep 0.25
            print "\r#{ ' ' * string.size }\r" 
            sleep 0.5
          end
          print ""
          print string
    end

    def typing_effect(string)
        string.split("").each do |c|
            print c 
            sleep(0.0047)
        end
        puts ""
    end
end 