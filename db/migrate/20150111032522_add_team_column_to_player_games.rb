class AddTeamColumnToPlayerGames < ActiveRecord::Migration
  def change
    add_column :player_games, :team_id, :integer
    add_index :player_games, :team_id
  end
end