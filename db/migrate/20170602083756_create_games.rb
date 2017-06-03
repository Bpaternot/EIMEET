class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :step
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
