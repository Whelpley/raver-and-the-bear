class Track < ActiveRecord::Base

  has_and_belongs_to_many :games

# Validations?

  # Call-backs? (running a validation before a thing happens)

# Class Methods?

  def drop_beats
    "The speakers go:/n#{self.beats}/n#{self.beats}/n#{self.beats}\n"
  end

end
