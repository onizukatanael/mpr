class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :boardcases, :count_turn

  def initialize()
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    
    # Initisalisation du boardcases :
    @boardcases = {}
    case_id_array = ["A1","B1","C1","A2","B2","C2","A3","B3","C3"]
    
    # Création des cases :
    case_id_array.each do |case_id|
      @boardcases[case_id] = BoardCase.new(case_id)
    end
  end

  def play_turn(current_player)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire

    puts " #{current_player.name}, à toi de jouer : Quelle case choisis-tu ? "
    case_id_array = ["A1","B1","C1","A2","B2","C2","A3","B3","C3"]
    case_choice = " "
    case_choice_ok = false

    while !case_choice_ok
      # Boucle tant qu'une case disponible n'a pas été trouvée'
      while !(case_id_array.include?(case_choice))
        # Boucle tant que la saisie n'est pas dans les 9 cases existantes
        print " > "
        case_choice = gets.chomp.upcase
        (case_id_array.include?(case_choice))? "" : (puts " Choix erronné, merci de recommencer :")
      end

      #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
      if @boardcases[case_choice].value == " "  then
        @boardcases[case_choice].value = current_player.symbol
        case_choice_ok = true
      else
        case_choice = " "
        puts " Cette case est déja prise, merci de recommencer : "
      end
    end
  end

  def victory?()
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    if nb_3_in_row("X") > 0 then
      return "X"
    end

    if nb_3_in_row("O") > 0 then
      return "O"
    end

    if ( (nb_3_in_row("X") == 0) && (nb_3_in_row("O") == 0 ) && (case_played_count() == 9) ) then 
      return "D"
    end
  end

  def case_played_count()
    # Compte le nombre de case déja jouées 
    case_id_array = ["A1","B1","C1","A2","B2","C2","A3","B3","C3"]

    case_played_count = 0

    case_id_array.each do |case_id|
      (@boardcases["#{case_id}"].value != " ")? (case_played_count += 1) : ""
    end
    case_played_count
  end

  def nb_3_in_row(symbol)
    # Calcul le nombre le ligne faite avec le symbol 'X' ou 'O'

    # construction de toutes les possibilités d'alignement :
    rows = [["A1", "A2", "A3"],["B1", "B2", "B3"],["C1", "C2", "C3"]]
    columns = [["A1", "B1", "C1"],["A2", "B2", "C2"],["A3", "B3", "C3"]]
    diags = [["A1", "B2","C3"],["C1", "B2","A3"]]
    all_possibilities_array = rows + columns + diags
    
    nb_3_in_row = 0
    all_possibilities_array.each do |one_possibility_array|
      # On teste toutes les possibilités d'alignement
      nb_searched_symbol = 0
      one_possibility_array.each do |case_id|
        # On tcompte le nombre de symbol sur la mm ligne
        (@boardcases["#{case_id}"].value == "#{symbol}")? (nb_searched_symbol += 1) : ""
      end
      (nb_searched_symbol == 3)? (nb_3_in_row += 1) : ""
    end
    nb_3_in_row
  end
end