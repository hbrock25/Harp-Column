class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.integer :notebook_id
      t.string :title
      t.text :body
      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
