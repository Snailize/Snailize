class Addmoreuserinfo < ActiveRecord::Migration
  def self.up
    add_column :users, :school, :string
    add_column :users, :department, :string
    add_column :users, :major, :string
    add_column :users, :mobile, :string
    add_column :users, :home, :string
    add_column :users, :dorm, :string
    add_column :users, :QQ, :string
    add_column :users, :homeaddr, :string
    add_column :users, :schaddr, :string
  end

  def self.down
    remove_column :users, :school, :string
    remove_column :users, :department, :string
    remove_column :users, :major, :string
    remove_column :users, :mobile, :string
    remove_column :users, :home, :string
    remove_column :users, :dorm, :string
    remove_column :users, :QQ, :string
    remove_column :users, :homeaddr, :string
    remove_column :users, :schaddr, :string
  end
end
