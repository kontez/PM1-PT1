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
  newarr = Array.new(ary.size) {Array.new()}
  for i in (0..ary.size-1)
    for j in (0..ary[i].size-1)
      newarr[i][j] = ary[i][j]
    end
  end
  return newarr
end

# 1.8
def drei_dim_ary_kopieren(ary)
  newarr = Array.new(ary.size)
  for i in (0..ary.size-1)
    newarr[i] = Array.new(ary[i].size) { Array.new() }
  end
  
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
  newarr = Array.new()
  for i in (0..ary.size-1)
    for j in (0..ary[i].size-1)
      if newarr[j] == nil then newarr[j] = Array.new() end
      newarr[j][i] = ary[i][j]
    end
  end
  return newarr
end
