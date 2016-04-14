def dreieck(n, zeichen)
	if ( n <= 0 )
		puts "keine Ausgabe für n=#{n} möglich"
	else 
		n.times do |i|
			puts (zeichen+" ")*(i+1)
    end
	end
end


def dreieck_alternierend(n, zeichen1, zeichen2) 
	if ( n <= 0 )
		puts "keine Ausgabe für n=#{n} möglich"
	else
		#header
		n.times do |i|
			printf("\t%d", i+1)
		end
		printf("\n")
		#Zeilen
		for i in 1..n
			#Nummern an der Seite
			printf("%d\t",i)
			i.times do |j|
				#wenn die Summe gerade ist druckt er z1, sonst z2
				if ((i+j)%2 == 0)
					printf("%s\t",zeichen1)
				else
					printf("%s\t",zeichen2)
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
	if ( n <= 0 )
		puts "keine Ausgabe für n=#{n} möglich"
  else
		#Erste Zeile
		puts (zeichen+" ")*(breite-1)
    #Mittlere Zeilen
		(n-2).times do |i|
			printf("%s",("  "*(i)))
			puts (zeichen+" ")*breite
		end
		#Letzte Zeile
    printf("%s",("  "*(n-2)))
    puts (zeichen+" ")*(breite-1)
		
	end
end



puts "n: "
n = gets.chomp.to_i
puts "char: "
zeichen = gets.chomp.to_s
puts "breite: "
breite = gets.chomp.to_i
diagonale(n,zeichen[0],breite)
