class CreateVenues < ActiveRecord::Migration
  def self.up
    create_table :venues do |t|
      t.string :name
      t.text :description
      t.float :location_latitude
      t.float :location_longitude

      t.timestamps
    end
  end

  def self.down
    drop_table :venues
  end
end
