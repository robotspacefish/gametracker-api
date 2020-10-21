class CreateOwnedGames < ActiveRecord::Migration[6.0]
  def change
    create_table :owned_games do |t|
      t.belongs_to :user
      t.belongs_to :game
      t.integer :anticipation_rating
      t.decimal :rating
      t.boolean :completed
      t.boolean :want_to_play
      t.timestamps
    end
  end
end
