require "test/unit"

#ln iterativ
def lni(x,n)
  if x <= 0 || n < 0 then raise ArgumentError end
  if x > 0
    log = 0.0
    for i in (0..n)
      log += ( (x-1.0)**(2.0*i+1.0) )/( (2.0*i+1.0)*(x+1.0)**(2.0*i+1.0) )
    end
  end
  return log*2
end

#ln rekursiv
def lnr(x,n)
  if x <= 0 || n < 0 then raise ArgumentError end
  if n==0 then return ((x-1.0)/(x+1.0))*2 end
  return lnr(x,n-1) + ( (x-1.0)**(2.0*n+1.0) )/( (2.0*n+1.0)*(x+1.0)**(2.0*n+1.0) )
end

#the result is supposed to be the same wtf?!
puts lni(6,4)
puts lnr(6,4)

#g iterativ
def gi(n)
  if n < 0 then raise ArgumentError end
  res = 0
  for i in (1..n)
    res += 1.0/(i*(i+1.0))
  end
  return res
end

def gr(n)
  if n < 0 then raise ArgumentError end
  if n == 1 then return 0.5 end
  return gr(n-1) + 1.0/(n*(n+1.0))
end

puts gi(99)
puts gr(99)

class TestRecursion < Test::Unit::TestCase
  def testlog()
    assert_raises(ArgumentError,"negative x"){lnr(1,-1)} 
    assert_raises(ArgumentError,"negative n"){lnr(0,0)}
    assert_raises(ArgumentError,"both"){lnr(0,-1)}
    assert_raises(ArgumentError,"negative x"){lni(1,-1)} 
    assert_raises(ArgumentError,"negative n"){lni(0,0)}
    assert_raises(ArgumentError,"both"){lni(0,-1)}

 end
  
  def testg()
    assert_raises(ArgumentError,"negative n"){gi(0)}
    assert_raises(ArgumentError,"negative n"){gr(0)}
  end
end
