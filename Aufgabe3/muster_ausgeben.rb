def dreieck(n, zeichen)
  if ( n <= 0 )
    puts "keine Ausgabe für n=#{n} möglich"
  else 
    n.times do |i|
      puts ("#{zeichen} "*(i+1))
    end
  end
end


def dreieck_alternierend(n, zeichen1, zeichen2) 
  max_l = n.to_s().size()
  if ( n <= 0 )
    puts "keine Ausgabe für n=#{n} möglich"
  else
    #header
    printf("%-#{max_l}s ", " ")
    n.times do |i|
      printf("%-#{max_l}d ", i+1)
  end
    printf("\n")
    #Zeilen
    for i in (1..n)
      #Nummern an der Seite
      printf("%-#{max_l}d ", i)
      i.times do |j|
        if ((i+j)%2 == 0)
          printf("%-#{max_l}s ", zeichen1)
          #printf("%s\t",zeichen1)
        else
          printf("%-#{max_l}s ", zeichen2)
          #printf("%s\t",zeichen2)
        end
      end
      #newline
      printf("\n")
    end
  end 
end

def dreieck_alternierend_oben(n, zeichen1, zeichen2)
  if ( n <= 0 )
    puts "keine Ausgabe für n=#{n} möglich"
  else
    #Zeilen
    n.downto(1) do |i|
      #Leerzeichen am Anfang
      printf("%s",("  "*(n-i)))
      i.downto(1) do |j|
        #Zeichen
        if ((i+j)%2 == 0)
          printf("%s ",zeichen1)
        else
          printf("%s ",zeichen2)
        end
      end
      #newline
      printf("\n")
    end
  end
end

def diagonale(n, zeichen, breite)
  if (( n <= 0 ) || ( breite >= n ))
    puts "keine Ausgabe für n=#{n} möglich"
  else
    #Erster Part
    tmp = ( breite / 2 ) + 1
    k = 0
    tmp.upto(breite-1) do |i|
      k += 1
      puts ("#{zeichen} ")*i
    end
    #Mittlere Zeilen
    (n-(k*2)).times do |i|
      printf("%s",("  "*(i)))
      puts ("#{zeichen} ")*breite
    end
    #Letzter Part
    j = (n-(k*2))
    (breite-1).downto(tmp) do |i|
      printf("%s",("  "*j))
      puts ("#{zeichen} ")*(i)
      j += 1
    end
  end
end

#Tests
puts "[+] Testing dreieck, with values (1,:*) - (-5,:'(') - (5, :¬)"
dreieck(1, :*)
dreieck(-5,:'(')
dreieck(5, :¬)
puts "\n[+] Testing dreieck_alternierend with values (7, :-, :o)"
dreieck_alternierend(7, :-, :o)
puts "\n[+] Testing dreieck_alternierend_oben with values (9, :x, :'@')"
dreieck_alternierend_oben(9, :x, :'@')
puts "\n[+] Testing diagonale with values (7, :'o', 3)"
diagonale(7, :'o', 3)













