class CreateLogs < ActiveRecord::Migration
  def self.up
    create_table :logs do |t|
      t.integer :project_id
      t.decimal :change, :precision => 10, :scale => 2, :default => 0 
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :logs
  end
end
