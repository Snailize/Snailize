class Changedecimal2int < ActiveRecord::Migration
  def self.up
    add_column :projects,:finished,:decimal, :precision => 10, :scale => 2, :default => 0 
  end

  def self.down
    remove_column :projects,:finished,:force=>true
  end
end
