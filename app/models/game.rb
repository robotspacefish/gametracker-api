class Game < ApplicationRecord
  has_and_belongs_to_many :platforms

  # has_many :owned_games
  # has_many :users, through: :owned_games

end
