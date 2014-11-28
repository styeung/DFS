class AddFullNameToTest < ActiveRecord::Migration
  def change
    add_column :teams, :full_name, :string
    add_index :teams, :full_name
  end
end
