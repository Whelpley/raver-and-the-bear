class Game < ActiveRecord::Base

  belongs_to :user
  has_and_belongs_to_many :tracks

# Validations?

# Call-backs?

# Class Methods?

# presets attributes at start of game
  def load_stats
    self.health = 3
  end

# more to this one ...
  def next_turn
    self.turn_count += 1
  end


end
