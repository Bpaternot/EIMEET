class CreateBars < ActiveRecord::Migration[5.0]
  def change
    create_table :bars do |t|
      t.string :address
      t.string :name
      t.integer :tv_number
      t.integer :tournament_size
      t.string :phone_number
      t.text :description
      t.string :offers

      t.timestamps
    end
  end
end
