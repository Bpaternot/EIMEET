class AddAgainstgoalsToScores < ActiveRecord::Migration[5.0]
  def change
    add_column :scores, :against_goals, :integer
  end
end
