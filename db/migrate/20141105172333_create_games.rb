class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.date :date, null: false
      t.string :home_team, null: false
      t.string :away_team, null: false
      
      t.timestamps
    end
    
    add_index :games, :date
    add_index :games, :home_team
    add_index :games, :away_team
    add_index :games, [:date, :home_team, :away_team], unique: true
    
  end
end
