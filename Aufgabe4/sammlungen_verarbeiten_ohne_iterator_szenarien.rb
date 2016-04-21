require "sammlungen_verarbeiten_ohne_iterator"

# bitte den seed nicht ändern, damit Ergebnisse reproduzierbar bleiben
srand(99)

# 1.1
ary1 = [7,13, 45, 33, 90,:ende]
ein_dim_ary_elemente_ausgeben(ary1)

# 1.2
kopie = ein_dim_ary_kopieren(ary1)
puts kopie.to_s()
puts kopie.equal?(ary1) # das muss false ergeben
puts kopie == ary1 # das muss true ergeben
puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

# 1.3
puts ein_dim_ary_teiler_von_3(10).to_s()
puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

# 1.4
ary2 = Array.new(10){rand(1..100)}
puts ary2.to_s()
puts ein_dim_ary_max(ary2)
puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

# 1.5
ary2 = Array.new(10){rand(1..100)}
puts ary2.to_s()
puts ein_dim_ary_sum(ary2)
puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

# 1.6
# erzeugen mit einer zufälligen Anzahl an Zeilen und
# einer zufälligen Anzahl an Spalten
# Elemente werden zufällig im Bereich 30..80 gewählt
zwei_dim_ary1 = Array.new(rand(1..12)){Array.new(rand(1..6)){rand(30..80)} }
puts zwei_dim_ary1.to_s()
zwei_dim_ary_ausgeben(zwei_dim_ary1)
puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

# 1.7 elementweise kopieren
zwei_dim_kopie = zwei_dim_ary_kopieren(zwei_dim_ary1)
puts zwei_dim_kopie.equal?(zwei_dim_ary1) # muss false ergeben

# Test, ob auch alle enthaltenen Elemente kopiert wurden
enthalten_identisch = false
for index in (0...zwei_dim_kopie.size())
  if (zwei_dim_kopie[index].equal?(zwei_dim_ary1[index]))
    enthalten_identisch = true
  end
end
puts "alle enthaltenen Elemente wurden kopiert: #{!enthalten_identisch}"
puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

# 1.8
#
# erzeugen mit einer zufälligen Anzahl für die x,y,z Dimension
# Elemente werden zufällig im Bereich 30..80 gewählt

drei_dim_ary1 = Array.new(rand(1..5)){Array.new(rand(1..4)) {Array.new(rand(1..7)) {rand(1..100)}}}
puts drei_dim_ary1.to_s()
drei_dim_kopie = drei_dim_ary_kopieren(drei_dim_ary1)
# Test, ob auch alle enthaltenen Elemente kopiert wurden

def tiefe_kopie_drei_dim?(drei_dim_kopie,drei_dim_ary1)
  for index in (0...drei_dim_kopie.size())
    if (drei_dim_kopie[index].equal?(drei_dim_ary1[index]))
      return false
    end
    for index2 in (0...drei_dim_kopie[index].size())
      if (drei_dim_kopie[index][index2].equal?(drei_dim_ary1[index][index2]))
        return false
      end
    end
  end
  return true
end

puts "alle enthaltenen Elemente wurden kopiert: #{tiefe_kopie_drei_dim?(drei_dim_kopie,drei_dim_ary1)}"
puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

# 1.9
puts zwei_dim_ary_sum(zwei_dim_ary1)
puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

# 1.10
puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
puts drei_dim_ary_sum(drei_dim_ary1)

# 1.11
zwei_dim_ary2 = Array.new(2){Array.new(5) {rand(1..100)}}
puts zwei_dim_ary2.to_s()
puts zwei_dim_ary_transponiere(zwei_dim_ary2).to_s()

puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
