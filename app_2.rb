require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


puts "WELLCOME to battle for KAAMELOTT"

puts "Qui est encore ce bras cassé..?"
print "(choisis le nom du chevalier de la table ronde c'est plus drôle ;) )\n
------>"
human1 = HumanPlayer.new(gets.chomp)


player1 = Player.new("Ivain le chevalier au lion")
player2 = Player.new("Govain le petit pedestre dont un au lion")
players = [player1,player2]

while human1.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)
    human1.show_state
    puts "Que veux tu faire?"
    puts "\na - chercher un moyen pour mieux pouvoir attaquer ces monstreux Lapins Adultes"
    puts "s - te cacher derrière une plque d'invisibilité et voir si tu peux améliorer ta situation"
    puts "\n partir à l'assaut d'un chevalier de la table ronde"
    if player1.life_points > 0
        player1.show_state
        puts "0 - Ivain"
    end
     if player2.life_points > 0
        player2.show_state
        puts "1 - Gauvain"   
    end
    print "--->"
    choice = gets.chomp
    if choice == "s"
        human1.search_health_pack
    elsif choice == "a"
        human1.seach_weapon
    elsif choice == "0"
        human1.attacks(player1)
    elsif choice == "1"
        human1.attacks(player2)
    else
      puts  "Encore cette chançon qui reste....\n
        \nMon petit oiseau\n
        A pris sa volée\n
        Mon petit oiseau\n
        A pris sa volée\n
        A pris sa, à la volette\n
        A pris sa, à la volette\n
        A pris sa volée\n
        
        \nEst allé se mettre\n
        Sur un oranger\n
        Est allé se mettre\n
        Sur un oranger\n
        Sur un o, à la volette\n
        Sur un o, à la volette\n
        Sur un oranger\n
        
        \nLa branche était sèche\n
        L'oiseau est tombé\n
        La branche était sèche\n
        L'oiseau est tombé\n
        L'oiseau est, à la volette\n
        L'oiseau est, à la volette\n
        L'oiseau est tombé\n"
    end

    players.each do |i|
        if i.life_points > 0
            i.attacks(human1) 
        end
    end
end

if human1.life_points > 0
    puts "Te voila courroné roi de Bretagne"
else
    puts "Les petits pédestres dont un au lion ont eu raison de toi!"
end
=begin
puts "voici l'état de la situation!"
puts player1.show_state
puts player2.show_state
=end