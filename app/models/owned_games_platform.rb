class OwnedGamesPlatform < ApplicationRecord
  belongs_to :owned_game
  belongs_to :games_platform
end
