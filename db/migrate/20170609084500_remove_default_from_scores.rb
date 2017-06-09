class RemoveDefaultFromScores < ActiveRecord::Migration[5.0]
  def change
    change_column_default :scores, :goals, nil
  end
end
