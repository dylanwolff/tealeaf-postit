class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :votes

  has_secure_password validations: false

  validates :username, presence: true, length: { maximum: 20 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, on: :create
end
