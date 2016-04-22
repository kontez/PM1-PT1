# 1.1
def ein_dim_ary_elemente_ausgeben(ary)
  for i in (0..ary.size-1)
    puts "#{i}:#{ary[i]} "
  end
end

# 1.2
def ein_dim_ary_kopieren(ary)
  newarr = []
  for i in (0..ary.size-1)
    newarr[i] = ary[i]
  end
  return newarr
end

# 1.3
def ein_dim_ary_teiler_von_3(n)
  newarr = []
  for i in (0..n-1)
    i % 3 == 0 ? newarr[i] = "#{i} Teiler von 3" : newarr[i] = nil
  end
  return newarr
end

# 1.4
def ein_dim_ary_max(ary)
  if ary.empty? then return nil end
  max = 0
  for i in (0..ary.size-1)
    if ary[i] > max then max = ary[i] end
  end
  return max
end

# 1.5
def ein_dim_ary_sum(ary)
  if ary.empty? then return nil end
  sum = 0
  for i in (0..ary.size-1)
    sum += ary[i]
  end
  return sum
end

# 1.6
def zwei_dim_ary_ausgeben(ary)
  for i in (0..ary.size-1)
    for j in (0..ary[i].size-1)
      printf "(#{i},#{j}) = #{ary[i][j]} "
    end
    puts " |"
  end
end

# 1.7
def zwei_dim_ary_kopieren(ary)
  newarr = []
  newarr[0] = []
  for i in (0..ary.size-1)
    for j in (0..ary[i].size-1)
      newarr[i][j] = ary[i][j]
    end
  end
  return newarr
end

# 1.8
def drei_dim_ary_kopieren(ary)
  newarr = []
  newarr[0] = []
  newarr[1] = []
  for i in (0..ary.size-1)
    for j in (0..ary[i].size-1)
      for k in (0..ary[i][j].size-1)
        newarr[i][j][k] = ary[i][j][k]
      end
    end
  end
  return newarr
end

# 1.9
def zwei_dim_ary_sum(ary)
  newarr = []
  newarr[0] = []
  sum = 0
  for i in (0..ary.size-1)
    for j in (0..ary[i].size-1)
      sum += ary[i][j]
    end
  end
  return sum
end

# 1.10
def drei_dim_ary_sum(ary)
  newarr = []
  newarr[0] = []
  newarr[1] = []
  sum = 0
  for i in (0..ary.size-1)
    for j in (0..ary[i].size-1)
      for k in (0..ary[i][j].size-1)
        sum += ary[i][j][k]
      end
    end
  end
  return sum
end


# 1.11
def zwei_dim_ary_transponiere(ary)

end




# Tests
srand(99)
# 1.1
ary1 = [7,13, 45, 33, 90,:ende]
ein_dim_ary_elemente_ausgeben(ary1)
puts "~~~~~~~~~~~~~~~~~"
#1.2
kopie = ein_dim_ary_kopieren(ary1)
puts kopie.to_s()
puts kopie.equal?(ary1) # should return false
puts kopie == ary1 # should be true
puts "~~~~~~~~~~~~~~~~~"
#1.3
puts ein_dim_ary_teiler_von_3(10).to_s()
puts "~~~~~~~~~~~~~~~~~"
#1.4
ary2 = Array.new(10){rand(1..100)}
puts ary2.to_s()
puts ein_dim_ary_max(ary2)
puts "~~~~~~~~~~~~~~~~~"
#1.5
ary = Array.new(10){rand(1..100)}
puts ary2.to_s()
puts ein_dim_ary_sum(ary2)
puts "~~~~~~~~~~~~~~~~~"
#1.6
zwei_dim_ary1 = Array.new(rand(1..12)){Array.new(rand(1..6)){rand(30..80)} }
puts zwei_dim_ary1.to_s()
zwei_dim_ary_ausgeben(zwei_dim_ary1)
puts "~~~~~~~~~~~~~~~~~"
#1.7
zwei_dim_kopie = zwei_dim_ary_kopieren(zwei_dim_ary1)
puts zwei_dim_kopie.equal?(zwei_dim_ary1) # should be false
# Test, ob auch alle enthaltenen Elemente kopiert wurden
enthalten_identisch = false
for index in (0...zwei_dim_kopie.size())
  if (zwei_dim_kopie[index].equal?(zwei_dim_ary1[index]))
    enthalten_identisch = true
  end
end
puts "alle enthaltenen Elemente wurden kopiert: #{!enthalten_identisch}"
puts "~~~~~~~~~~~~~~~~~"
# 1.8
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
puts "~~~~~~~~~~~~~~~~~"
# 1.9
puts zwei_dim_ary_sum(zwei_dim_ary1)
puts "~~~~~~~~~~~~~~~~~"
# 1.10
puts drei_dim_ary_sum(drei_dim_ary1)
puts "~~~~~~~~~~~~~~~~~"
# 1.11
zwei_dim_ary2 = Array.new(2){Array.new(5) {rand(1..100)}}
puts zwei_dim_ary2.to_s()
puts zwei_dim_ary_transponiere(zwei_dim_ary2).to_s()






