require "player.rb"

class Game

  def attack(opponent)
    opponent.receive_damage
  end
  
end
