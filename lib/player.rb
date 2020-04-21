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

class HumanPlayer < Player
    attr_accessor :weapon_level

    def initialize(name)
        @name = name
        life_points = 100
        @life_points = life_points
        weapon_level = 1
        @weapon_level = weapon_level
    end

    def show_state 
        puts "#{@name} à #{@life_points}pv et une pierre incandéscante de niveau #{@weapon_level}"
    end

    def compute_damage
        damage = rand(0..6)* @weapon_level
        return damage
    end

    def seach_weapon
        new_weapon = rand(1..6)
        puts "Tu as trouvé une pierre incandéscante de niveau #{new_weapon}"
        if new_weapon > @weapon_level
            @weapon_level = new_weapon
            if new_weapon == 6
               puts "He mais elle disait pas des conneries la vieille! le graal est une pièrre incandéscante!"
            end
            puts"Elle brille de milles feux!"
        else
            puts "J'ai mis mon doigt dans le cul du coq pour savoir le sens du vent... He dis donc il en dirait pas un peut trop souvent des conneries vot'Kadok?"

        end
    end
    
    def search_health_pack
        potion = rand(1..6)
        if potion == 1
            puts "j'ai frollé le sol de façon péramptoir!"
        elsif potion > 1 && potion < 6
            puts "Camouflage éducloré!"
            @life_points += 50
            puts "50 PV en plus wooohooooo!!!!"
        elsif potion > 5
            puts "Oh putain il est fort ce con!"
            @life_points += 80
            puts "Je me sent comme larron en foire! et de 80 PV!!"
        end
        if @life_points > 100
            @life_points = 100
            puts "Hep hep hep! Pas plus de 100 PV! \n Ouais c'est pas faux!"
        end
    end
end
