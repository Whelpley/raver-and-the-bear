class Game < ActiveRecord::Base

  belongs_to :user
  has_and_belongs_to_many :tracks

# redundant with migration presets
  def reset_stats
    self.health = 3
    self.wiggles = 0
    self.turn_count = 0
  end

# more to this one ...
  def next_turn
    self.turn_count += 1
  end

# other Class Methods?
# -stat calls


end
