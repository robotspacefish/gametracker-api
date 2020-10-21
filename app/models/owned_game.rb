class OwnedGame < ApplicationRecord
  belongs_to :user
  belongs_to :game

  has_many :owned_games_platforms
  has_many :games_platforms, through: :owned_games_platforms

  has_many :platforms, through: :games_platforms

  has_many :notes
end
