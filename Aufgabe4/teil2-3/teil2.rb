srand(99)

ary = Array.new(rand(1..5)){Array.new(rand(1..4)) {Array.new(rand(1..7)) {rand(1..100)}}}

#2.3
puts ary.to_s
puts ary.flatten.max(1){|a,b| a<=>b}.to_s
#puts ary.max(1){ |max, i| max <=> i.max(1){ |max2, j| max2 <=> j.max(1){ |max3,k| max3 <=> k }}}.to_s


#2.4
h = {1=>3, 2=>6, 5=>11, 7=>6}

class Hash
	def invertiere()
	
	end
end

puts h.invertiere()
