class Game < ApplicationRecord
  has_many :consoles, as: :platform, dependent: :destroy

  has_many :owned_games
  has_many :users, through: :owned_games

end
