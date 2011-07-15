class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string :filename
      t.string :content_type
      t.binary :body

      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
