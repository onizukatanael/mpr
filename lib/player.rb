class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).

  attr_reader :name , :symbol, :id_player, :nb_victories

  def initialize(symbol)
    #TO DO : doit régler son nom et sa valeur
    @symbol = symbol
    @name = ask_name()
    @nb_victories = 0
  end

  def ask_name()
    # Demande le nom au joueur
    puts "Joueur #{@symbol} : Quel est ton prénom ?"
    print "> "
    gets.chomp
  end

  def new_victory()
    # Demande le nom au joueur
    @nb_victories += 1
  end
end