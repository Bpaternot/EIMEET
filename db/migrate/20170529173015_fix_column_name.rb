class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :tournaments, :type, :tournament_type
  end
end
