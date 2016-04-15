class Taschenrechner
  def initialize()
    @z0 = nil
    @z1 = nil
  end

  def starten()
    until (( eingabe = gets.chomp.downcase.strip ) == 'exit' )
      if eingabe.match(/[\+\-\*\/]/) != nil
        # Operator
        # I know, this code is messy and should be splitted into functions
        # But we weren't allowed to create any other methods, so ¯\_(ツ)_/¯
        case eingabe
          when '+'
            if ( @z0 != nil && @z1 != nil )
              @z0 += @z1
              @z1 = nil
            else
              op_nicht_moeglich('+')
            end            
          when '-'
            # unär?
            if @z1 == nil
              @z0 != nil ? @z0 = -@z0 : op_nicht_moeglich('- unär')
            else
              if ( @z0 != nil && @z1 != nil )
                @z0 -= @z1
                @z1 = nil
              else
                op_nicht_moeglich('-')
              end
            end 
          when '*'
            if ( @z0 != nil && @z1 != nil )
              @z0 *= @z1
              @z1 = nil
            else
              op_nicht_moeglich('*')
            end 
          when '/'
            if ( @z0 != nil && @z1 != nil )
              @z0 /= @z1
              @z1 = nil
            else
              op_nicht_moeglich('/')
            end 
          when '**'
            if ( @z0 != nil && @z1 != nil )
              @z0 **= @z1
              @z1 = nil
            else
              op_nicht_moeglich('**')
            end 
          else
            puts "kein gültiger Operator"
        end
      else
        # Zahl
        if ( tmp = lese_zahl(eingabe))
          if @z0 == nil
            @z0 = tmp
          elsif @z1 == nil
            @z1 = tmp
          else
            puts "Hier keine Zahleneingabe"
          end
        else
          puts "Operand erwartet, Eingabe #{eingabe} ignoriert."
        end
      end
      puts "z0 = #{@z0}, z1 = #{@z1} "
    end
    puts "Sie haben einen einfachen Taschenrechner sehr glücklich gemacht"
  end

  def op_nicht_moeglich(op)
    puts "Operation #{op} nicht möglich."
  end

  def lese_zahl(eingabe)
    if eingabe.to_i.to_s == eingabe
      return eingabe.to_i 
    elsif eingabe.to_f.to_s == eingabe
      return eingabe.to_f
    else
      return false
    end
  end
end

tr = Taschenrechner.new()

tr.starten()
