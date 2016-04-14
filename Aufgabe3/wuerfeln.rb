def lotto_zahl()
  return rand(1..49)
end

def anzahl_wuerfe_fuer(zahl)
  if (zahl > 6 || zahl < 1) then return nil end
  @wurf = rand(1..6)
  @wuerfe = 1
  until @wurf == zahl
    @wurf = rand(1..6)
    @wuerfe += 1
  end
  return @wuerfe
end

def anzahl_versuche_fuer_zahl_in_folge(zahl,folge)
  if (zahl > 6 || zahl < 1) then return nil end
  @res = 0
  folge.times do 
    @res += anzahl_wuerfe_fuer(zahl)
  end
  @count = 1
  until @res == folge
    @res = 0
    folge.times do
      @res += anzahl_wuerfe_fuer(zahl)
    end
    @count += 1
  end
  return @count
end

def the_winner_takes_it_all(zahl,folge)
  if (zahl > 6 || zahl < 1) then return nil end
  i = 0
  while true
    i += 1
    if anzahl_versuche_fuer_zahl_in_folge(zahl, folge) == 1
      return i
    end
  end
end



#tests
puts "[+] Generating the winning six Lotto numbers..."
#Okay I realized that this was a bad idea and that I need to call the method 6 times :/
#puts (lotto_zahl().to_s+' ')*6
puts lotto_zahl().to_s+' '+lotto_zahl().to_s+' '+lotto_zahl().to_s+' '+lotto_zahl().to_s+' '+lotto_zahl().to_s+' '+lotto_zahl().to_s
puts "[+] "+anzahl_wuerfe_fuer(3).to_s+" tries needed to roll the 3."
puts "[+] "+anzahl_versuche_fuer_zahl_in_folge(4,3).to_s+" tries needed to roll the 4 three times in sequence."
puts "[+] Player number "+the_winner_takes_it_all(2,4).to_s+" is the winner since he first rolled 4 times the 2."
