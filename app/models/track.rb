class Track < ActiveRecord::Base

  has_and_belongs_to_many :games

# Validations?

# Class Methods?

  def drop_beats
    "The speakers go:/n#{self.beats}/n#{self.beats}/n#{self.beats}\n"
  end

  def show_self
    puts self.title
    puts self.artist
  end


end
