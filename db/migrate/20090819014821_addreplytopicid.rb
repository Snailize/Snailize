class Addreplytopicid < ActiveRecord::Migration
  def self.up
    add_column :replies,:topic_id,:integer
  end

  def self.down
    remove_column :replies,:topic_id
  end
end
