class CommandLine

    attr_reader :prompt 
    attr_accessor :user 

    def initialize 
        @prompt = TTY::Prompt.new
    end 

    def greet 
        puts "Welcome to HomeFit!"
    end 

    def login_or_register
        prompt.select("Do you want to login or register?") do |menu|
            menu.choice "Login", -> {login}
            menu.choice "Register", -> {register}
        end 
    end 

    def login 
        User.login_user
    end 

    def register
        User.register_user
    end 

    def home_page
        user.reload 
        system 'clear'

        prompt.select("UPDATE THIS TAGLINE LATER") do |menu|
            # menu.choice "See previous workouts", -> {see_previous_session}
            # menu.choice "Browse all available programs", -> {browse_all_programs}
            menu.choice "Sign out", -> {sign_out}
        end 
    end 

    def sign_out
        puts "Good job, today. See you again, soon!"
    end 
end 
