class AddIndexToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :pool_index, :integer
  end
end
