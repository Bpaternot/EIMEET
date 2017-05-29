class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.date :start_day
      t.date :end_day
      t.references :bar, foreign_key: true

      t.timestamps
    end
  end
end
