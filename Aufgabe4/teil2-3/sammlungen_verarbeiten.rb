require "Set"
# 2.1
def ein_dim_ary_elemente_ausgeben(ary)
  ary.each_index { |i| print "#{i}:#{ary[i]}\n" }
end

# 2.2 (Variante 1.5)
def ein_dim_ary_sum(ary)
  return ary.inject(0){ |sum,i| sum + i }
end

# 2.2 (Variante 1.9)
def zwei_dim_ary_sum(ary)
  return ary.inject(0){ |sum,i| sum + i.inject(0){ |sum2,j| sum2 + j } }
end

# 2.3
def drei_dim_ary_max(ary)
  return ary.collect{|dim1| dim1.collect{|dim2| dim2.max(1){|x,y| x<=>y }}}.max.max.max
end

# 2.4 invertiere für Hash
class Hash
  def invertiere()
    newhash = Hash.new()
    self.each {|key,value| newhash[value] = key } 
    return newhash
  end
  # 2.5 konkateniere für Hash
  def konkateniere(h2)
    newhash = Hash.new()
    self.each {|key,value| 
      h2.each {|key2,value2|
        if value == key2 then newhash[key] = value2 end
      }
    }
    return newhash
  end
end








