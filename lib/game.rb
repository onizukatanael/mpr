class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :game_is_ongoing , :board, :players, :picture

  def initialize()
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player

    # Création des joueurs
    player0 = Player.new("O")
    player1 = Player.new("X")
    @players = [player0,player1]
        
    #Init Ongoing
    @game_is_ongoing = true
  end

  def turn()
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). 
    # Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, 
    # passe au joueur suivant si la partie n'est pas finie.

    # Affichage du rendu graphique 
    @picture.header_display()

    @picture.display(@board.boardcases,@players)

    # Lance un nouveau tour
    @board.play_turn(@current_player)

    # Gère la fin de partie 
    (@board.victory?() != nil )? (@game_is_ongoing = false) : ""

    # Change de joueur actif
    if @game_is_ongoing == true then 
      (@current_player == @players[0])? @current_player = @players[1] : @current_player = @players[0]
    end
    #binding.pry
  end

  def new_round()
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.

    # Création du board
    @board = Board.new()

    # Création du graph
    @picture = Show.new()
    
    # Joueur commançant la partie :
    @current_player = @players[0]
  end

  def game_end()
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    
    # Résultat de la partie :
    result = @board.victory?()

    case result
    when "O"
      @players[0].new_victory
      end_message = " Bravo #{@players[0].name} !"
    when "X"
      @players[1].new_victory
      end_message = " Bravo #{@players[1].name} !"
    when "D"
      end_message = " Match nul entre #{@players[0].name} et #{@players[1].name} !"
    end
    puts

    # Affichage de la partie en cours
    @picture.header_display()
    @picture.display(@board.boardcases,@players)

    puts " Partie finie !" 
    puts end_message

    # Nouvelle partie ?
    puts " Une nouvelle partie ? Tapez O pour continuer "
    print " > "
    new_round = gets.upcase.chomp
    (new_round == "O")? (@game_is_ongoing = true) : (puts " Merci d'avoir joué avec nous !")
  end

end