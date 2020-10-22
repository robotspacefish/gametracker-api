class CreateConsoles < ActiveRecord::Migration[6.0]
  def change
    create_table :consoles do |t|
      t.string :name
      t.references :platform, polymorphic: true, null: false

      t.timestamps
    end
  end
end
