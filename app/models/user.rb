class User < ApplicationRecord
  has_secure_password

  has_many :owned_games, dependent: :destroy
  has_many :games, through: :owned_games

  has_many :notes
end
