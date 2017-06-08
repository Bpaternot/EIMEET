class AddTotalAgainstGoalsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :total_against_goals, :integer
  end
end
