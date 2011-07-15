class Addprjcodename < ActiveRecord::Migration
  def self.up
    add_column :projects, :codename, :string
  end

  def self.down
    remove_column :projects, :codename
  end
end
