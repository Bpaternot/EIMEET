class AddStepToTournaments < ActiveRecord::Migration[5.0]
  def change
    add_column :tournaments, :step, :string
  end
end
