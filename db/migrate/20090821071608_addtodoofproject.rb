class Addtodoofproject < ActiveRecord::Migration
  def self.up
    add_column :projects,:todo,:text
  end

  def self.down
    remove_column :projects,:todo
  end
end
