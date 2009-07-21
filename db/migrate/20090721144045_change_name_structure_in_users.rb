class ChangeNameStructureInUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :surname, :string
    rename_column :users, :name, :firstname
  end

  def self.down
    remove_column :users, :surname
    rename_column :users, :firstname, :name
  end
end
