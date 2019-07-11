def ask_firstname
  puts "Quel est ton prénom ?"
  print "> "
  firstname  = gets.chomp
  return firstname
end

def say_hello(nom)
  puts "Bonjour #{nom} !"
  return
end

def perform
  say_hello(ask_firstname)
end

perform
