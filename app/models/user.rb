require 'bcrypt'

class User < ActiveRecord::Base
  has_many :games

  include BCrypt

  validates_uniqueness_of :email
  validates :password, :name, :email, presence: true, allow_blank: false

  # Call-backs:
  # before_save , set password ?

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

# Class Methods?
# stat calls
# check out errors


end
