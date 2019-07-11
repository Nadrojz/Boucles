def randomNumberMet
  rand(1..6)
end

stair = 0

while stair >= 0 && stair <= 9
  randomNumber=randomNumberMet
  if randomNumber >= 5
    puts "Tu as fait le chiffre #{randomNumber}, tu montes d'une marche"
    stair = stair + 1
    puts "Tu es maintenant sur la marche numéro #{stair}"
  elsif randomNumber < 5 && randomNumber > 1
    puts "Tu as fait le chiffre #{randomNumber}, tu restes sur la marche numéro #{stair}"
    stair = stair
  elsif randomNumber == 1 && stair != 0
    puts "Tu as fait le chiffre #{randomNumber}, tu descends d'une marche"
    stair = stair - 1
    puts "Tu es maintenant sur la marche numéro #{stair}"
  elsif randomNumber == 1 && stair == 0
    stair = 0
    puts "Tu restes en bas de l'escalier"
  end
  if stair == 10
    puts "Bravo, tu as gagné"
  end
end
