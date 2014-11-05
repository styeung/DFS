class CreatePlayerGames < ActiveRecord::Migration
  def change
    create_table :player_games do |t|
      t.integer :player_id, null: false
      t.integer :game_id, null: false
      t.integer :points
      t.integer :rebounds
      t.integer :assists
      t.integer :steals
      t.integer :blocks
      t.integer :turnovers
      t.integer :minutes
      t.integer :fga
      t.integer :fgm
      t.integer :three_fga
      t.integer :three_fgm
      t.integer :fta
      t.integer :ftm
      t.timestamps
    end
    
    add_index :player_games, :player_id
    add_index :player_games, :game_id
  end
end
