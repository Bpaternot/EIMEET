class RemoveColomnFromPlayers < ActiveRecord::Migration[5.0]
  def change
    remove_column :players, :fifa_game
  end
end
