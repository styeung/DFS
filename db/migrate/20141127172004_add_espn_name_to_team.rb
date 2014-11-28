class AddEspnNameToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :espn_name, :string
    add_index :teams, :espn_name
  end
end
