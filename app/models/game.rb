class Game < ApplicationRecord
  has_many :consoles, as: :platform

  has_many :owned_games
  has_many :users, through: :owned_games

end
