class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.boolean :admin
      t.string :position
      t.boolean :ps4
      t.boolean :xbox
      t.integer :controller_ps4
      t.integer :controller_xbox
      t.integer :fifa_game
      t.references :user, foreign_key: true
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
