class StringAnalyser
  def initialize(string)
    @string = string
  end
  
  def zaehle(teil_string)
    return @string.scan(teil_string).size
  end
  
  def extrahiere_ende(trenn_zeichen)
    return @string.split(trenn_zeichen).last
  end

  def extrahiere_praefix(trenn_zeichen)
    if @string[@string.size-1] == trenn_zeichen
      return @string
    else
      tmp = @string.rindex(trenn_zeichen).to_i
      return @string[0,tmp]
    end
  end

  def ersetze_endung(trenn_zeichen, neue_endung)
    if @string.include? trenn_zeichen 
      newstring = extrahiere_praefix(trenn_zeichen)
    else newstring = @string end
    return newstring.concat(neue_endung)  
  end

  def anzahl_woerter(trenn_zeichen)
    tmpstr = @string.squeeze(trenn_zeichen)
    #oneliners are bad and I should feel bad. Today I don't. :>
    words = tmpstr.scan(/([^#{trenn_zeichen}]*)#{trenn_zeichen}?/).flatten!.reject! { |s| (s.nil? || s.empty?) }
    return words.size
  end

  def to_s()
    return @string
  end
end


str_ana  = StringAnalyser.new("ana haelt   nichts von ananas")
str_ana2 = StringAnalyser.new("....hallo....ollah...rb")
str_ana3 = StringAnalyser.new("......")
puts("------------------------------------------------")
puts str_ana.zaehle("ana")              #=> 3
puts str_ana2.zaehle("..")              #=> 8
puts str_ana3.zaehle("...")             #=> 4
# These actually return 2, 5 and 2 since I am looking for unique occurences of the substring
puts("------------------------------------------------")
puts str_ana.extrahiere_ende(" ")     #=> ananas
puts str_ana2.extrahiere_ende(".")    #=> rb
puts str_ana3.extrahiere_ende(".")    #=>
puts("------------------------------------------------")
puts str_ana.extrahiere_praefix(" ")    #=> ana haelt   nichts von
puts str_ana2.extrahiere_praefix(".")   #=> ....hallo....ollah...
puts str_ana3.extrahiere_praefix(".")   #=> ......
puts("------------------------------------------------")
puts str_ana.anzahl_woerter(" ")        #=> 5
puts str_ana.anzahl_woerter(".")        #=> 1
puts str_ana2.anzahl_woerter(".")       #=> 3
puts str_ana3.anzahl_woerter(".")       #=> 0
puts("------------------------------------------------")
puts str_ana2.ersetze_endung(".","txt") #=> ....hallo....ollah...txt
puts str_ana3.ersetze_endung(" ","txt") #=> ......txt
puts("------------------------------------------------")
puts str_ana                            #=> ana haelt   nichts von ananas
puts str_ana2                           #=> ....hallo....ollah...rb
puts str_ana3                           #=> ......





