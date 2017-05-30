class AddColumnToTournament < ActiveRecord::Migration[5.0]
  def change
    add_column :tournaments, :number_controllers, :integer
  end
end
