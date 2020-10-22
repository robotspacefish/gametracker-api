class DropTableGamesPlatforms < ActiveRecord::Migration[6.0]
  def change
    drop_table :games_platforms
  end
end
