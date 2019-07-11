def wtf_pyramid
  print "Choisis un nombre impair : "
  num = gets.chomp.to_i
  i = 1
  space = " "
  y = num

  while i <= num * 2 do
    if num % 2 == 0
      y = 0
      print "Tu n'as pas choisis un nombre impair, recommence en suivant la consigne : "
      num = gets.chomp.to_i
      y = num
    elsif
      while i <= num * 2 do
        puts (space * y + "#" * i)
        i += 2
        y -=1
      end
    end
  end
end

wtf_pyramid
