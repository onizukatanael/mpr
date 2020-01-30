class Show
  # Classe show
  
  def initialize()
    #Initialisation
  end

  def display(boardcases_hash,players_array)
    #Gère l'affichage du morpion

    #Création de variables :
    a1 = boardcases_hash["A1"].value
    a2 = boardcases_hash["A2"].value
    a3 = boardcases_hash["A3"].value
    b1 = boardcases_hash["B1"].value
    b2 = boardcases_hash["B2"].value
    b3 = boardcases_hash["B3"].value
    c1 = boardcases_hash["C1"].value
    c2 = boardcases_hash["C2"].value
    c3 = boardcases_hash["C3"].value

    puts 
    puts 
    puts "               1   2   3  ".colorize(:light_red)
    puts "             ┌───┬───┬───┐".colorize(:light_red)
    puts "           A │ #{a1} │ #{a2} │ #{a3} │          O : #{players_array[0].name} / #{players_array[0].nb_victories} victoires".colorize(:light_red)
    puts "             ├───┼───┼───┤".colorize(:light_red)
    puts "           B │ #{b1} │ #{b2} │ #{b3} │          X : #{players_array[1].name} / #{players_array[1].nb_victories} victoires".colorize(:light_red)
    puts "             ├───┼───┼───┤".colorize(:light_red)
    puts "           C │ #{c1} │ #{c2} │ #{c3} │".colorize(:light_red)
    puts "             └───┴───┴───┘".colorize(:light_red)
    puts
  end


  def header_display()
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
  end
end