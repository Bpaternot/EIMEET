class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments do |t|
      t.date :date
      t.integer :number_players
      t.string :status
      t.integer :number_consoles
      t.integer :number_games
      t.string :type
      t.references :bar, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
