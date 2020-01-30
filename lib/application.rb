class Application

  def initialize()
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    # 

    header()              # Message de début
    my_game = Game.new()            # Initialisation du jeu
    while my_game.game_is_ongoing 
      my_game.new_round()           # Lancement d'une manche
      while my_game.game_is_ongoing 
        my_game.turn()              # Lancement d'un tour
      end
      my_game.game_end()
    end
  end

  def header()
    system("clear")
    puts 
    puts "   _____ ______       ________      ________      ________    ___      ________      ________       ".colorize(:light_blue)
    puts "  |\\   _ \\  _   \\    |\\   __  \\    |\\   __  \\    |\\   __  \\  |\\  \\    |\\   __  \\    |\\   ___  \\     ".colorize(:light_blue)
    puts "  \\ \\  \\\\\\__\\ \\  \\   \\ \\  \\|\\  \\   \\ \\  \\|\\  \\   \\ \\  \\|\\  \\ \\ \\  \\   \\ \\  \\|\\  \\   \\ \\  \\\\ \\  \\    ".colorize(:light_blue)
    puts "   \\ \\  \\\\|__| \\  \\   \\ \\  \\\\\\  \\   \\ \\   _  _\\   \\ \\   ____\\ \\ \\  \\   \\ \\  \\\\\\  \\   \\ \\  \\\\ \\  \\   ".colorize(:light_blue)
    puts "    \\ \\  \\    \\ \\  \\   \\ \\  \\\\\\  \\   \\ \\  \\\\  \\|   \\ \\  \\___|  \\ \\  \\   \\ \\  \\\\\\  \\   \\ \\  \\\\ \\  \\  ".colorize(:light_blue)
    puts "     \\ \\__\\    \\ \\__\\   \\ \\_______\\   \\ \\__\\\\ _\\    \\ \\__\\      \\ \\__\\   \\ \\_______\\   \\ \\__\\\\ \\__\\ ".colorize(:light_blue)
    puts "      \\|__|     \\|__|    \\|_______|    \\|__|\\|__|    \\|__|       \\|__|    \\|_______|    \\|__| \\|__| ".colorize(:light_blue)
    puts 
    puts             
    puts " Ce jeu se joue à 2 joueurs : "
    puts
  end

end