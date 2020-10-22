class DropTablePlatforms < ActiveRecord::Migration[6.0]
  def change
    drop_table :platforms
  end
end
