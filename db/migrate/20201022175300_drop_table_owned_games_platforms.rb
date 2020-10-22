class DropTableOwnedGamesPlatforms < ActiveRecord::Migration[6.0]
  def change
    drop_table :owned_games_platforms
  end
end
