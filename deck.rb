require_relative 'card'

Dir[File.join(File.dirname(__FILE__),'roles','*.rb')].each do |file|
  require file
end


class Deck

  attr_accessor :deck

  ROLES = [Ambassador, Assassin, Captain, Contessa, Duke]

  def initialize
    @deck = []
    ROLES.each do |role|
      3.times do
        @deck << role.new
      end
    end
    @deck.shuffle!
  end

  def draw(n)
    @deck.shift(n)
  end

end