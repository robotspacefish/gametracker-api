class User < ApplicationRecord
  has_secure_password

  has_many :owned_games
  has_many :games, through: :owned_games

  # has_many :owned_games_platforms
  # has_many :games_platforms, through: :owned_games_platforms

  has_many :notes
end
