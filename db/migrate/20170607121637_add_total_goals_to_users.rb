class AddTotalGoalsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :total_goals, :integer, default: 0
  end
end
