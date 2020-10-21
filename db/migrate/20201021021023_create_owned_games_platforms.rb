class CreateOwnedGamesPlatforms < ActiveRecord::Migration[6.0]
  def change
    create_table :owned_games_platforms do |t|
      t.belongs_to :owned_game
      t.belongs_to :games_platform
      t.timestamps
    end
  end
end
