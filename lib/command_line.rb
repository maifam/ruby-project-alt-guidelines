class CommandLine

    attr_reader :prompt 
    attr_accessor :user, :program 

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
        selection = prompt.select("", ["Beginner HIIT", "Intermediate HIIT", "Advanced HIIT", 
            "Beginner Yoga", "Intermediate Yoga", "Advanced Yoga", 
            "Beginner Weight-Training", "Intermediate Weight-Training", "Advanced Weight-Training"])

        if selection == "Beginner HIIT"
            beginner_hiit_session = Program.all.select { |prog| prog.name == "Beginner HIIT"}
            Program.show_program_details(beginner_hiit_session)
        elsif selection == "Intermediate HIIT"
            intermediate_hiit_session = Program.all.select { |prog| prog.name == "Intermediate HIIT"}
            show_program_details(intermediate_hiit)
        elsif selection == "Advanced HIIT"
            advanced_hiit_session = Program.all.select { |prog| prog.name == "Beginner HIIT"}
            show_program_details(advanced_hiit)
        elsif selection == "Beginner Yoga"
            beginner_yoga_session = Program.all.select { |prog| prog.name == "Beginner Yoga"}
            show_program_details(beginner_yoga)
        elsif selection == "Intermediate Yoga"
            intermediate_yoga_session = Program.all.select { |prog| prog.name == "Intermediate Yoga"}
            show_program_details(intermediate_yoga)
        elsif selection == "Advanced Yoga"
            advanced_yoga_session = Program.all.select { |prog| prog.name == "Advanced Yoga"}
            show_program_details(advanced_yoga)
        elsif selection == "Beginner Weight-Training"
            beginner_weights_session = Program.all.select { |prog| prog.name == "Beginner Weight-Training"}
            show_program_details(beginner_weight)
        elsif selection == "Intermediate Weight-Training"
            intermediate_weights_session = Program.all.select { |prog| prog.name == "Intermediate Weight-Training"}
            show_program_details(intermediate_weights)
        elsif selection == "Advanced Weight-Training"
            advanced_weights_session = Program.all.select { |prog| prog.name == "Advanced Weight-Training"}
            show_program_details(advanced_weights)
        else 
            home_page
        end
    end

    # def browse_all_programs
    #     user.reload
    #     system 'clear'

    #     prompt.select("All Programs Available:") do |menu|
    #         menu.choice "Beginner HIIT", -> {beginner_hiit}
    #         menu.choice "Intermediate HIIT", -> {intermediate_hiit}
    #         menu.choice "Advanced HIIT", -> {advanced_hiit}
    #         menu.choice "Beginner Yoga", -> {beginner_yoga}
    #         menu.choice "Intermediate Yoga", -> {intermediate_yoga}
    #         menu.choice "Advanced Yoga", -> {advanced_yoga}
    #         menu.choice "Beginner Weight-Training", -> {beginner_weights}
    #         menu.choice "Intermediate Weight-Training", -> {intermediate_weights}
    #         menu.choice "Advanced Weight-Training", -> {advanced_weights}
    #         puts
    #         menu.choice "Go back to home page", -> {home_page}
    #     end 
    # end 

    # def all_program_list
    #     program_list = Program.all.map { |prog| prog.name }
    # end 

    # def difficulty_list
    #     difficulty_list = Program.all.select { |prog| prog.difficulty } 
    # end 

    def browse_difficulty
        user.reload
        system 'clear'

        prompt.select("All Difficulty Levels:") do |menu|
            menu.choice "Beginner", -> {beginner_list}
            menu.choice "Intermediate", -> {intermediate_list}
            menu.choice "Advanced", -> {advanced_list}
            puts
            menu.choice "< Go Back", -> {home_page}
        end 
    end 

    def beginner_list
        system 'clear'
        prompt.select("Select a Beginner Program to start your session!") do |menu|
            menu.choice "Beginner HIIT", -> {beginner_hiit_session}
            menu.choice "Beginner Yoga", -> {beginner_yoga}
            menu.choice "Beginner Weight-Training", -> {beginner_weights}
            puts
            menu.choice "< Go Back", -> {browse_difficulty}
        end 
    end 

    def beginner_hiit_session
    
        puts "You selected #{program.name}! Get ready to: #{program.goal}!"
        sleep(2)
        puts "For this workout you will do: "
        Program.exercises.map{ |exer| "#{rand(5..10)} " + exer.name + "!" }.join(" -- ")

    end 

    
    def intermediate_list
        system 'clear'
        prompt.select("Select an Intermediate Program to start your session!") do |menu|
            menu.choice "Intermediate HIIT", -> {intermediate_hiit}
            menu.choice "Intermediate Yoga", -> {intermediate_yoga}
            menu.choice "Intermediate Weight-Training", -> {intermediate_weights}
            puts
            menu.choice "< Go Back", -> {browse_difficulty}
        end 
    end 

    def see_previous_sessions
        user.show_past_sessions
        sleep(3.5)
        home_page
    end

    def see_program_info
        program.program_details
        sleep(5)
        puts "Great workout!"
        home_page
    end

    def advanced_list
        system 'clear'
        prompt.select("Select an Advanced Program to start your session!") do |menu|
            menu.choice "Advanced HIIT", -> {advanced_hiit}
            menu.choice "Advanced Yoga", -> {advanced_yoga}
            menu.choice "Advanced Weight-Training", -> {advanced_weights}
            puts
            menu.choice "< Go Back", -> {browse_difficulty}
        end 
    end 

    # def see_program_info
    #     program.program_details
    #     sleep(5)
    #     puts "Great workout!"
    #     home_page
    # end

    # def see_previous_sessions
    #     User.sessions
    # end 

    def log_out
        puts "Great session, today!"
    end 
end 