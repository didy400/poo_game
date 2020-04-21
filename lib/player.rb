class Player
    attr_accessor :name, :life_points

  
    def initialize(name)
        @name = name
        life_points = 10
        @life_points = life_points
    end

  

    def show_state 
        puts "#{@name} à #{@life_points}pv"
    end

    def compute_damage
         damage = rand(0..6)
         return damage
    end

    def gets_damage (damage)
        @life_points -= damage
        if @life_points <= 0
            puts "La prétendante au trône de Bretagne #{@name} est morte"
        end
    end
    
    def attacks(attacked_player)
        puts "#{@name} va déffoncer le cul de #{attacked_player.name}"
        damage = compute_damage
        attacked_player.gets_damage(damage)
        if attacked_player.life_points > 0
            puts "#{attacked_player.name} s'est bouffé #{damage} point de dégats!"   
            attacked_player.show_state   
        end   
    end

end


 #@@players =  {}
    
 # def all
    #    @@players
    #end

     # def self.find_by_name(name)
    #    @@players.include?(name) ? @@players[name] : false
    #end