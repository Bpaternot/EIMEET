class AddColomnsToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :fifa_game_ps4, :integer
    add_column :players, :fifa_game_xbox, :integer
  end
end
