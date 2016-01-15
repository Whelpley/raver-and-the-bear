class Game < ActiveRecord::Base

  belongs_to :user
  has_and_belongs_to_many :tracks


# Validations?

  # Call-backs? (running a validation before a thing happens)


# Class Methods?

  def load_stats
    self.health = 3
    self.dances = 0
    self.turn_count = 0
  end

end
