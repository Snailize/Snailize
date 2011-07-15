class Addmoreuserinfo3 < ActiveRecord::Migration
  def self.up
    remove_column :users, :truename
  end

  def self.down
    add_column :users, :truename, :string
  end
end
