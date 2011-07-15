class Removeid < ActiveRecord::Migration
  def self.up
    remove_column :projects_users,:id
  end

  def self.down
    add_column :projects_users,:id,:integer
  end
end
