def ask_firstname
  puts "Quel est ton prénom ?"
  print "> "
  firstname  = gets.chomp
  return firstname
end

def say_hello(firstname)
  puts "Bonjour #{firstname}"
  return
end

def perform
  say_hello(ask_firstname)
end

perform
