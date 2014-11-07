class ChangeGameColumnToId < ActiveRecord::Migration
  def change
    remove_column :games, :away_team, :string
    remove_column :games, :home_team, :string
    
    add_column :games, :away_team_id, :integer, null: false
    add_column :games, :home_team_id, :integer, null: false
    
    add_index :games, :away_team_id
    add_index :games, :home_team_id
  end
end
