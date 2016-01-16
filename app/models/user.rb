# require 'bcrypt'

class User < ActiveRecord::Base
  has_many :games

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

# Now trying out this stuff
# Still a shaky understanding of BCrypt - remove this comment when I do
  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end

# Validations?

  # Call-backs? (running a validation before a thing happens)

# Class Methods?

end
