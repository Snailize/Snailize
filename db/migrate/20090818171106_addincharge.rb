class Addincharge < ActiveRecord::Migration
  def self.up
    add_column :projects, :incharge, :integer
  end

  def self.down
    remove_column :projects, :incharge
  end
end
