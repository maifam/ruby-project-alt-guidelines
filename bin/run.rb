require_relative '../config/environment'


commandline_instance = CommandLine.new
commandline_instance.greet

user_or_nil = commandline_instance.login_or_register


until user_or_nil 
    user_or_nil = commandline_instance.login_or_register
end 

commandline_instance.user = user_or_nil
commandline_instance.home_page
# commandline_instance.browse_all_programs
