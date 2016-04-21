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
  for i in (0..ary.size-1)
    for j in (0..ary[i].size-1)
      newarr[i][j] = ary[i][j]
    end
  end
  return newarr
end

# 1.8

def drei_dim_ary_kopieren(ary)
end

# 1.9

def zwei_dim_ary_sum(ary)

end

# 1.10
def drei_dim_ary_sum(ary)

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
puts "~~~~~~~~~~~~~~~~~"










