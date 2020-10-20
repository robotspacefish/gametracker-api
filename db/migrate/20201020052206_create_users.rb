class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.boolean :private_library
      t.boolean :private_recently_played

      t.timestamps
    end
  end
end
