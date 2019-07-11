require 'io/console'


def signup

        puts "Définis ton mot de passe : "

        @mdp = STDIN.noecho(&:gets).chomp
end

def login

        puts "Saisis ton mot de passe : "

        log = STDIN.noecho(&:gets).chomp

            while @mdp != log
            puts "Mot de passe incorrect ! Retente ta chance : "

            log = STDIN.noecho(&:gets).chomp

            end
end


def welcome_screen

    puts "Bienvenue dans ton espace secret ! "

end

def perform
        signup
        login
        welcome_screen

end

perform


# Technique 2
# def signup
#     puts "Choisis un mot de passe "
#     print "> "
#     password = gets.chomp
#     return password
#   end
#
#   def login(password)
#     puts "Mot de passe pour rentrer ?"
#     print">"
#     tentative= gets .chomp
#     if tentative==password then
#         welcome_screen() else puts "Mauvais mot de passe, merci de vous reconnecter"
#     end
#     return tentative
#
#   end
#
#   def welcome_screen()
#     puts "Bienvenue sur le Welcome screen"
#   end
#
#   def perform
#     password = signup
#     login(password)
#   end
#
#   perform



# def signup
#   puts "Veuillez définir un mot de passe"
#   print ">"
#   password = gets.chomp.to_s
#   return password
# end
#
# def login(password)
#   puts "Veuillez entrer votre mot de passe"
#   print ">"
#   loginpwd = gets.chomp.to_s
#   return loginpwd
# end
#
# def checkloginpwd
#   while login(password) != signup(password)
#     puts "Mot de passe incorrect"
#   end
# end
#
# def signuplogin
# password = signup
# login(password)
# checkloginpwd
# end
#
# signuplogin
