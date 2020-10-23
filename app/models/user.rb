class User < ApplicationRecord
  has_secure_password

  has_many :owned_games, dependent: :destroy
  has_many :games, through: :owned_games

  has_many :notes

  def add_game_by_instance(game)
    self.games << game
  end

  def self.destroy_by_username(username)
    user = self.find_by_username(username)
    user.destroy
  end

  def self.find_by_username(username)
    self.find_by(username: username)
  end

  def add_owned_platform_to_game_by_title(game_title, platform_name)
    game = self.games.find_by(title: game_title)

    owned_game = self.owned_games.find_by(game_id: game.id)
    owned_game.consoles.create!(name: platform_name)

    owned_game
  end
end
