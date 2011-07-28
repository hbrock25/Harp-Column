class CreatePerformances < ActiveRecord::Migration
  def self.up
    create_table :performances do |t|
      t.datetime  :date
      t.text      :notes
      t.integer   :venue_id

      t.timestamps
    end
  end

  def self.down
    drop_table :performances
  end
end
