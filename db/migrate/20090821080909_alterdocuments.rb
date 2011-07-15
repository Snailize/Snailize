class Alterdocuments < ActiveRecord::Migration
  def self.up
    remove_column :documents,:body
    add_column :documents,:project_id,:integer
  end

  def self.down
    remove_column :documents,:project_id
    add_column :documents,:body,:binary
  end
end
