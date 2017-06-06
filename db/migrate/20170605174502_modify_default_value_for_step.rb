class ModifyDefaultValueForStep < ActiveRecord::Migration[5.0]
  def change
    change_column :tournaments, :step, :string, :default => "group"
  end
end
