class Editusers < ActiveRecord::Migration
  def self.up
    add_column :users,:homepostcode,:string
    add_column :users,:schpostcode,:string

  end

  def self.down
    remove_column :users,:schpostcode
    remove_column :users,:homepostcode
  end
end
