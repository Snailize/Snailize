class UsersProjects < ActiveRecord::Migration
  def self.up
    create_table "projects_users" do |t|
      t.column :user_id,:integer
      t.column :project_id,:integer
    end
  end

  def self.down
    drop_table "projects_users"
  end
end
