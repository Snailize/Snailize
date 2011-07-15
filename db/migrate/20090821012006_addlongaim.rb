class Addlongaim < ActiveRecord::Migration
  def self.up
    add_column :projects,:longaim,:string
  end

  def self.down
    remove_column :projects,:longaim
  end
end
