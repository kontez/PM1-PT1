require "Zelle"
require "Point"

class Life
 
  def initialize(n,muster_index)
  end

  # Initialisiert das Spielfeld mit Objekten der Klasse Zelle
  # Die Position einer Zelle ist definiert durch die obere linke Ecke des Gitternetzes
  # und die Zeile / Spalte, in der die Zelle steht.
  # Die Zelle berechnet eigenständig ihre Koordinaten
  def generation_initialisieren()
  end

  # Markiert die Zellen auf den Positionen des Muster als lebend
  def muster_erzeugen()
  end

  # Berechnet die nächste Generation auf Basis der Spielregeln
  def naechste_generation()
   end

  # Berechnet die Anzahl der lebenden Nachbarn / berücksichtigt auch die Ränder
  def lebende_nachbar_zellen(i,j)
  end

  # Macht alle Zelle unsichtbar
  def unsichtbar_machen()
  end

  # Macht alle Zelle sichtbar
  def sichtbar_machen()
  end

  # Versetzt das Spiel in den Ausgangszustand
  def zuruecksetzen()
  end

  #
  # Vorgegebene Methode der Klasse Life
  #

  # Simuliert die Entwicklung der Generationen des Game Of Life für n - Wiederholungen
  #
  # Dazu wird alle 10 ms die Folgegeneration mit Hilfe der Methode
  # naechste_generation berechnet und dargestellt
  #
  def simuliere(schritte)
    TkTimer.new(10,schritte, proc{
      naechste_generation()
    }).start(0, proc{})
  end

end