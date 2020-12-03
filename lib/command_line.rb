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

        prompt.select("Ready to beast the day?") do |menu|
            menu.choice "Browse all our available programs", -> {browse_all_programs}
            menu.choice "Browse programs by difficulty", -> {browse_difficulty}
            menu.choice "See my previous sessions", -> {see_previous_sessions}
            menu.choice "Log out", -> {log_out}
        end 
    end 

    def browse_all_programs
        user.reload
        system 'clear'

        prompt.select("All Programs Available:") do |menu|
            menu.choice "HIIT", -> {all_program_list[0]}
            menu.choice "Yoga", -> {all_program_list[1]}
            menu.choice "Weight-Training", -> {all_program_list[2]}
            puts
            menu.choice "Go back to home page", -> {home_page}
        end 
    end 

    def all_program_list
        program_list = Program.all.map { |prog| prog.name }
    end 

    def difficulty_list
        difficulty_list = Program.all.select { |prog| prog.difficulty } 
    end 

    def browse_difficulty
        user.reload
        system 'clear'

        prompt.select("All Difficulty Levels:") do |menu|
            menu.choice "Beginner", -> {difficulty_list[0]}
            menu.choice "Intermediate", -> {difficulty_list[1] }
            menu.choice "Advanced", -> {difficulty_list[2]}
            puts
            menu.choice "Go back to home page", -> {home_page}
        end 
    end 
    
    def see_previous_sessions
        Session.all.map {|sesh| sesh.user}
    end 

    def log_out
        puts "Great session, today!"
    end 
end 
