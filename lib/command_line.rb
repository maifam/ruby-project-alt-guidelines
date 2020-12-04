class CommandLine

    attr_reader :prompt 
    attr_accessor :user, :program 
    #$global_variable = 5
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
        # user.reload
        # system 'clear'

        selection = prompt.select("", ["Beginner HIIT", "Intermediate HIIT", "Advanced HIIT", 
            "Beginner Yoga", "Intermediate Yoga", "Advanced Yoga", 
            "Beginner Weight-Training", "Intermediate Weight-Training", "Advanced Weight-Training", "Go Back"])

        if selection == "Beginner HIIT"
            beginner_hiit_session = Program.all.find { |prog| prog.name == "Beginner HIIT"}
            add_workout(beginner_hiit_session)
        elsif selection == "Intermediate HIIT"
            intermediate_hiit_session = Program.all.find { |prog| prog.name == "Intermediate HIIT"}
            add_workout(intermediate_hiit_session)
        elsif selection == "Advanced HIIT"
            advanced_hiit_session = Program.all.find{ |prog| prog.name == "Advanced HIIT"}
            add_workout(advanced_hiit_session)
        elsif selection == "Beginner Yoga"
            beginner_yoga_session = Program.all.find{ |prog| prog.name == "Beginner Yoga"}
            add_workout(beginner_yoga_session)
        elsif selection == "Intermediate Yoga"
            intermediate_yoga_session = Program.all.find { |prog| prog.name == "Intermediate Yoga"}
            add_workout(intermediate_yoga_session)
        elsif selection == "Advanced Yoga"
            advanced_yoga_session = Program.all.find { |prog| prog.name == "Advanced Yoga"}
            add_workout(advanced_yoga_session)
        elsif selection == "Beginner Weight-Training"
            beginner_weights_session = Program.all.find { |prog| prog.name == "Beginner Weight-Training"}
            add_workout(beginner_weights_session)
        elsif selection == "Intermediate Weight-Training"
            intermediate_weights_session = Program.all.find{ |prog| prog.name == "Intermediate Weight-Training"}
            add_workout(intermediate_weights_session)
        elsif selection == "Advanced Weight-Training"
            advanced_weights_session = Program.all.find{ |prog| prog.name == "Advanced Weight-Training"}
            add_workout(advanced_weights_session)
        else 
            home_page
        end
    end

    def add_workout(program) 
        puts "You selected #{program.name}! Get ready to: #{program.goal}!"
        sleep(2)
        puts "For this workout you will do: "
            if program.name.include?("Beginner")
                puts program.exercises.map{ |exer| "#{rand(5..10)} " + exer.name + "!" }.join(" -- ")
                Session.create(user_id: user.id, program_id: program.id, duration: rand(15..30))
            elsif program.name.include?("Intermediate")
                puts program.exercises.map{ |exer| "#{rand(10..20)} " + exer.name + "!" }.join(" -- ")
                Session.create(user_id: user.id, program_id: program.id, duration: rand(30..45))
            elsif program.name.include?("Advanced")
                puts program.exercises.map{ |exer| "#{rand(20..40)} " + exer.name + "!" }.join(" -- ")
                Session.create(user_id: user.id, program_id: program.id, duration: rand(45..60))
            end
        sleep(3)
        what_now
    end

    def what_now
        selection = prompt.select("What would you like to do now?", ["Do another workout!", "See completed workouts", "I'm done for the day"])
        if selection == "Do another workout!"
            home_page
        elsif selection == "See completed workouts"
            see_previous_sessions
        else 
            log_out
        end
    end

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

    # def beginner_hiit_session
    #     Program.all.find { |prog| prog.name == "Beginner HIIT"}
    # end 

    def beginner_list
        system 'clear'

        selection = prompt.select("Here are the Beginner Programs:", ["Beginner HIIT","Beginner Yoga", 
            "Beginner Weight-Training", "Go Back"])
    
        if selection == "Beginner HIIT"
            beginner_hiit_session = Program.all.find { |prog| prog.name == "Beginner HIIT"}
            add_workout(beginner_hiit_session)
        elsif selection == "Beginner Yoga"
            beginner_yoga_session = Program.all.find{ |prog| prog.name == "Beginner Yoga"}
            add_workout(beginner_yoga_session)
        elsif selection == "Beginner Weight-Training"
            beginner_weights_session = Program.all.find { |prog| prog.name == "Beginner Weight-Training"}
            add_workout(beginner_weights_session)
        else 
            browse_difficulty
        end
    end
    
    def intermediate_list
        system 'clear'

        selection = prompt.select("Here are the Intermediate Programs:", ["Intermediate HIIT","Intermediate Yoga", 
            "Intermediate Weight-Training", "Go Back"])
    
        if selection == "Intermediate HIIT"
            intermediate_hiit_session = Program.all.find { |prog| prog.name == "Intermediate HIIT"}
            add_workout(intermediate_hiit_session)
        elsif selection == "Intermediate Yoga"
            intermediate_yoga_session = Program.all.find { |prog| prog.name == "Intermediate Yoga"}
            add_workout(intermediate_yoga_session)
        elsif selection == "Intermediate Weight-Training"
            intermediate_weights_session = Program.all.find{ |prog| prog.name == "Intermediate Weight-Training"}
            add_workout(intermediate_weights_session)
        else 
            browse_difficulty
        end 
    end
      
    def advanced_list
        system 'clear'
        selection = prompt.select("Here are the Advanced Programs:", ["Advanced HIIT", "Advanced Yoga", 
        "Advanced Weight-Training", "Go Back"])
    
        if selection == "Advanced HIIT"
            advanced_hiit_session = Program.all.find{ |prog| prog.name == "Beginner HIIT"}
            add_workout(advanced_hiit_session)
            sleep(3)
        elsif selection == "Advanced Yoga"
            advanced_yoga_session = Program.all.find { |prog| prog.name == "Advanced Yoga"}
            add_workout(advanced_yoga_session)
        elsif selection == "Advanced Weight-Training"
            advanced_weights_session = Program.all.find{ |prog| prog.name == "Advanced Weight-Training"}
            add_workout(advanced_weights_session)
        else 
            browse_difficulty
        end 
    end

    def see_previous_sessions

        system 'clear'
        if user.sessions.length == 0 
            puts "You don't have any sessions yet!"
            sleep(3)
            home_page
        else 
            user.show_past_sessions
        end 

        puts 
        puts "Do you want to delete your sessions? (Enter Y/N)"
        answer = gets.chomp

        if answer == "y" || answer == "Y"
            user.sessions.destroy_all
            puts "You've deleted all your sessions!"
            sleep(2)
            home_page
        else answer == "n" || answer == 'N'
            home_page
        end 
    end

    def log_out
        puts "Great session, today #{user.username}!"
        exit
    end 

end 