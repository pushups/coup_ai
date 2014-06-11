require_relative '../player'
require_relative '../action'

class RandomPlayer < Player

  def take_turn
    action = ACTIONS.sample

    if action.targeted_action?
      target = @opponents.sample
    else
      target = nil
    end
    {:action => action, :target => target}
  end

end