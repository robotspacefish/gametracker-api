class GamesPlatform < ApplicationRecord
  belongs_to :game
  belongs_to :platform

  has_many :owned_games_platforms
  has_many :owned_games, through: :owned_games_platforms
end
