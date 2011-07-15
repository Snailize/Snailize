class Addtypeoflog < ActiveRecord::Migration
  def self.up
    add_column :logs,:ltype,:integer
  end

  def self.down
    remove_column :logs,:ltype
  end
end
