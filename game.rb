require_relative 'deck'
require_relative './players/random_player'

class Game

  def initialize(number_of_players = 2)
    @deck = Deck.new
    @players = []
    number_of_players.times do
      new_player = RandomPlayer.new
      @players.each do |player|
        player.add_opponent(new_player)
        new_player.add_opponent(player)
      end
      @players << new_player
    end
  end

  def run
    # Deal two cards to each player
    @players.each do |player|
      player.draw(@deck, 2)
    end

    @players.each do |player|
      puts player.take_turn.inspect
    end

  end

end