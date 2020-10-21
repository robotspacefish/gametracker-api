class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :summary
      t.string :idgb_id
      t.string :member_rating
      t.string :critic_rating
      t.string :finish_time_hasty
      t.string :finish_time_normal
      t.string :finish_time_completionist

      t.timestamps
    end
  end
end
