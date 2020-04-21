require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Guenièvre à la blanche fesse")
player2 = Player.new("Dame Mevanwi dit la truie")

puts "voici l'état de la situation!"
puts player1.show_state
puts player2.show_state

while player1.life_points > 0 && player2.life_points > 0

    puts "\n Les prétendantes au rône de bretagne vont maintenant s'affrotter pour 
    detterminer laquelle des deux mérrite le coeur de nottre bon roi.\n"  

    player1.attacks(player2)
    puts "\n"
   if player2.life_points > 0
     player2.attacks(player1)
   end
end

