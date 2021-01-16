class CommandLine

    attr_reader :prompt, :pastel
    attr_accessor :user, :program 

    def initialize 
        @prompt = TTY::Prompt.new
        @pastel = Pastel.new
    end 
    
    def signin_sound_effect
        pid = fork{ exec 'afplay', 'gym_sound_effect.mp3'}
    end 
    
    def pastel
        pastel = Pastel.new
    end
    
    def greet
        system 'clear' 
        signin_sound_effect
        emojis = "💪" + "     " + "\u{1f3cb}" + "     " + "\u{1f44a}" + "     " + "\u{1f3c3}" + "     " + "\u{1f44a}" +  "     " + "\u{1f3cb}" + "     " + "\u{1f44a}" + "     " + "\u{1f3c3}" + "     " + "\u{1f44a}" + "     " + "\u{1f3cb}" + "     " + "\u{1f44a}" + "     " + "\u{1f3c3}" + "     " + "💪"
        puts emojis.center(150)
        puts typing_effect(pastel.red("
        ██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗███████╗    ████████╗ ██████╗     ██╗  ██╗ ██████╗ ███╗   ███╗███████╗███████╗██╗████████╗
        ██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║██╔════╝    ╚══██╔══╝██╔═══██╗    ██║  ██║██╔═══██╗████╗ ████║██╔════╝██╔════╝██║╚══██╔══╝
        ██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║█████╗         ██║   ██║   ██║    ███████║██║   ██║██╔████╔██║█████╗  █████╗  ██║   ██║   
        ██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║██╔══╝         ██║   ██║   ██║    ██╔══██║██║   ██║██║╚██╔╝██║██╔══╝  ██╔══╝  ██║   ██║   
        ╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗       ██║   ╚██████╔╝    ██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗██║     ██║   ██║   
         ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝       ╚═╝    ╚═════╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═╝     ╚═╝   ╚═╝"))
         puts emojis.center(150)
    end 

    def login_or_register
        puts ""
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
    
    # def update_that_username
    #     User.update_username
    #     home_page
    # end

    def home_page
        user.reload 
        system 'clear'

        prompt.select(pastel.cyan("ARE YOU READY TO BEAST THE DAY!?")) do |menu|
            menu.choice "Browse All Available Programs", -> {browse_all_programs}
            menu.choice "Browse Programs by Difficulty Level", -> {browse_difficulty}
            menu.choice "See My Previous Sessions", -> {see_previous_sessions}
            menu.choice "Log out", -> {log_out}
            menu.choice "Delete My Account", -> {delete_account}
            menu.choice "Update Username", -> {update_that_username}
        end 
    end 

    def add_workout(program) 
        system 'clear'
        puts "You selected #{program.name}!"
        puts pastel.cyan("Get ready to #{program.goal}!")
        sleep(1.5)
        puts
        puts pastel.cyan.bold.underline("For this workout you will do:")
        puts
            if program.name.include?("Beginner")
                puts program.exercises.map{ |exer| "#{rand(5..10)} " + exer.name + "!" }.join(" -- ")
                Session.create(user_id: user.id, program_id: program.id, duration: rand(15..30), time: Time.now)
            elsif program.name.include?("Intermediate")
                puts program.exercises.map{ |exer| "#{rand(10..20)} " + exer.name + "!" }.join(" -- ")
                Session.create(user_id: user.id, program_id: program.id, duration: rand(30..45), time: Time.now)
            elsif program.name.include?("Advanced")
                puts program.exercises.map{ |exer| "#{rand(20..40)} " + exer.name + "!" }.join(" -- ")
                Session.create(user_id: user.id, program_id: program.id, duration: rand(45..60), time: Time.now)
            end
        sleep(3)
        puts
        what_now
    end

    def what_now
        puts pastel.cyan.bold("💪 GREAT JOB!!! 💪  " )
        puts
        selection = prompt.select("What would you like to do now?", 
            ["Do another workout!", "See completed workouts", "I'm done for the day"])
        if selection == "Do another workout!"
            home_page
        elsif selection == "See completed workouts"
            see_previous_sessions
        else 
            log_out
        end
    end

    def browse_all_programs
        system 'clear'
        prompt.select("Select a program to begin!") do |menu| 
            menu.choice "🏃Beginner HIIT", -> {add_workout(Program.beginner_hiit_session)}
            menu.choice "🏃🏃Intermediate HIIT", -> {add_workout(Program.intermediate_hiit_session)}
            menu.choice "🏃🏃🏃Advanced HIIT", -> {add_workout(Program.advanced_hiit_session)}
            menu.choice "🧘Beginner Pilates", -> {add_workout(Program.beginner_pilates_session)}
            menu.choice "🧘🧘Intermediate Pilates", -> {add_workout(Program.intermediate_pilates_session)}
            menu.choice "🧘🧘🧘Advanced Pilates", -> {add_workout(Program.advanced_pilates_session)}
            menu.choice "🏋️ Beginner Weight-Training", -> {add_workout(Program.beginner_weight_session)}
            menu.choice "🏋️🏋️ Intermediate Weight-Training", -> {add_workout(Program.intermediate_weight_session)}
            menu.choice "🏋️🏋️🏋️ Advanced Weight-Training", -> {add_workout(Program.advanced_weight_session)}
            menu.choice "<< Go Back", -> {home_page}
        end            
    end 

    def browse_difficulty
        system 'clear'
        prompt.select("Select a difficulty level:") do |menu|
            menu.choice "Beginner", -> {beginner_list}
            menu.choice "Intermediate", -> {intermediate_list}
            menu.choice "Advanced", -> {advanced_list}
            puts
            menu.choice "<< Go Back", -> {home_page}
        end 
    end 

    def beginner_list
        system 'clear'
        prompt.select("Select a Beginner Program to begin!") do |menu| 
            menu.choice "🏃Beginner HIIT", -> {add_workout(Program.beginner_hiit_session)}
            menu.choice "🧘‍Beginner Pilates", -> {add_workout(Program.beginner_pilates_session)}
            menu.choice "🏋️ Beginner Weight-Training", -> {add_workout(Program.beginner_weight_session)}
            menu.choice "<< Go Back", -> {browse_difficulty}
        end 
    end
    
    def intermediate_list
        system 'clear'
        prompt.select("Select an Intermediate Program to begin!") do |menu| 
            menu.choice "🏃🏃Intermediate HIIT", -> {add_workout(Program.intermediate_hiit_session)}
            menu.choice "🧘‍🧘Intermediate Pilates", -> {add_workout(Program.intermediate_pilates_session)}
            menu.choice "🏋️🏋️ Intermediate Weight-Training", -> {add_workout(Program.intermediate_weight_session)}
            menu.choice "<< Go Back", -> {browse_difficulty}
        end 
    end
      
    def advanced_list
        system 'clear'
        prompt.select("Select an Advanced Program to begin!") do |menu| 
            menu.choice "🏃🏃🏃Advanced HIIT", -> {add_workout(Program.advanced_hiit_session)}
            menu.choice "🧘🧘🧘‍Advanced Pilates", -> {add_workout(Program.advanced_pilates_session)}
            menu.choice "🏋️🏋️🏋️ Advanced Weight-Training", -> {add_workout(Program.advanced_weight_session)}
            menu.choice "<< Go Back", -> {browse_difficulty}
        end 
    end

    def see_previous_sessions
        user.reload
        system 'clear'
        if user.sessions.length == 0 
            puts pastel.blue("You don't have any sessions yet!")
            sleep(3)
            home_page
        else 
            user.show_past_sessions
        end 
        delete_previous_sessions
    end 

    def delete_previous_sessions
        puts
        puts "Do you want to delete your sessions? (Enter Y/N)"
        answer = gets.chomp

        if answer == "y" || answer == "Y"
            user.sessions.destroy_all
            puts
            puts "You've deleted all your sessions."
            sleep(2)
            home_page
        else answer == "n" || answer == 'N'
            puts "You've choosen to keep all your sessions."
            sleep(2)
            home_page
        end 
    end

    def log_out
        flashing_effect("Great session today, #{user.username}!!!!")
        exit
    end 

    def delete_account
        selection = prompt.select("Are You SURE You Want to Delete Your Account with HOMEFit?", 
        ["Yes", "No"])
        if selection == "Yes"
            flashing_effect("We are sorry to see you go!")
            user.destroy
            exit
        else
            home_page
        end
    end

    def typing_effect(string)
        string.split("").each do |c|
            print c 
            sleep(0.0047)
        end
        puts ""
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

    
end 