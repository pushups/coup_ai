require_relative 'deck'
require_relative 'action'

Dir[File.join(File.dirname(__FILE__), 'actions', '*.rb')].each do |file|
  require file
end

class Player

  attr_accessor :hand

  ACTIONS = [Assassinate, Coup, Exchange, ForeignAid, Income, Steal, Tax]
  BLOCKS = [:block_foreign_aid, :block_assassination, :block_stealing]

  def initialize
    @hand = []
    @memory = []
    @opponents = []
  end

  def draw(deck, n)
    @hand << deck.draw(n)
  end

  def add_opponent(player)
    @opponents << player
  end

end