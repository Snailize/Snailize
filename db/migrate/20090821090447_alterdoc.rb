class Alterdoc < ActiveRecord::Migration
  def self.up
    remove_column :documents,:content_type
    add_column :documents,:title,:string
  end

  def self.down
    remove_column :documents,:title
    add_column :documents,:content_type,:string
  end
end
