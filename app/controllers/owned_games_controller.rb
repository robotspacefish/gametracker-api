class OwnedGamesController < ApplicationController
  belongs_to :user
  belongs_to :games_platform
end
