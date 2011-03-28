class CreatePerformances < ActiveRecord::Migration
  def self.up
    create_table :performances do |t|
      t.string :name
      t.date :date
      t.integer :venue_id
      t.integer :user_id
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :performances
  end
end
