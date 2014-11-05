class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.string :type
      t.timestamps
    end
    
    add_index :teams, :name
    add_index :teams, :type
  end
end
