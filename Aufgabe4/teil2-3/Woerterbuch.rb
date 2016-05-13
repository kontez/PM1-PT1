require "Set"
class Woerterbuch 
  include Enumerable

  def initialize(sprachen)
    @sprachen = sprachen
    @words = Hash.new
  end
  
  def [](wort)
    return @words[wort]
  end
  
  def []=(wort,uebersetzung)
    if @words[wort] == nil then @words[wort] = Set.new end
    @words[wort].add(uebersetzung)
  end

  def to_s()
    str = "#{@sprachen}\n"
    @words.each { |key,values|
      str << "#{key}::"
      values.each { |tmp|
        str << "#{tmp}, "
      }
      str.chomp!(', ')
      str << "\n"
    }
    return str
  end

  def each
    if block_given?
      @words.each { |key,value|
        yield(key,value)
      }
    end
  end
  
end
