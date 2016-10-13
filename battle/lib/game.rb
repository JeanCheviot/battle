require './lib/player'
class Game
attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.reduce_hp
    turn_switcher
  end

  def turn_switcher
    @players.reverse!
  end
end
