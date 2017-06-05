class AddInfosToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :points, :integer, default: 0
    add_column :players, :bp, :integer, default: 0
    add_column :players, :bc, :integer, default: 0
    add_column :players, :diff, :integer, default: 0
  end
end
