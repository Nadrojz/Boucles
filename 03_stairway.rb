# Renvoie un chiffre entre 1 et 6
def randomNumberMet
  rand(1..6)
end

def message_up stairup
  "Tu montes d'un étage, tu es maintenant à l'étage #{stairup}"
end

def message_down stairdown
  "Tu descends d'un étage, tu es maintenant à l'étage #{stairdown}"
end

def message_stay stairstay
  "Tu restes au même étage, tu es toujours à l'étage #{stairstay}"
end

def message_win
  "Bravo, tu as gagné !"
end

def message_stairmin stairmin
  "Tu es sur la marche #{stairmin}, tu ne peux pas descendre plus bas"
end


def moveUser
  stair = 0
  i = 1
  while stair >= 0 && stair <= 9
    randomNumber = randomNumberMet
    puts "-----------------------"
    puts "Début du tour numéro #{i}"
    puts "-----------------------"
    if randomNumber >= 5
      puts "Le dé est lancé ! Tu as fait le chiffre #{randomNumber}"
      stair += 1
      puts message_up stair
    elsif randomNumber < 5 && randomNumber > 1
      puts "Le dé est lancé ! Tu as fait le chiffre #{randomNumber}"
      stair = stair
      puts message_stay stair
    elsif randomNumber == 1 && stair != 0
      puts "Le dé est lancé ! Tu as fait le chiffre #{randomNumber}"
      stair -= 1
      puts message_down stair
    elsif randomNumber == 1 && stair == 0
      puts "Le dé est lancé ! Tu as fait le chiffre #{randomNumber}"
      stair = 0
      puts message_stairmin stair
    end
    if stair == 10
      puts message_win
    end
  puts "-----------------------"
  puts "Fin du tour numéro #{i}"
  puts "-----------------------"
  i +=1
  end
  return stair
end


def perform
  moveUser
end

 perform
