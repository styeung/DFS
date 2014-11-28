class ChangeMinutesToFloat < ActiveRecord::Migration
  def change
    change_column :player_games, :minutes, :float
  end
end
