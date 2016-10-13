class User < ActiveRecord::Base
  # has_secure_password
  # Remember to create a migration!
  has_many :questions
  has_many :answers

  validates :email, :hashed_password, presence: true
  validates :email, uniqueness: true

  include BCrypt

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(pass)
    @password = Password.create(pass)
    self.hashed_password = @password
  end
end
