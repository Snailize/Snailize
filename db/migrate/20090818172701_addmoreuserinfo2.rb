class Addmoreuserinfo2 < ActiveRecord::Migration
  def self.up
    add_column :users, :truename, :string
  end

  def self.down
    remove_column :users, :truename
  end
end
