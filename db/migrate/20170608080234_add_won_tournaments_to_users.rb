class AddWonTournamentsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :won_tournaments, :integer
  end
end
