class CreateInstruments < ActiveRecord::Migration
  def self.up
    create_table :instruments do |t|
      t.string :model
      t.integer :manufacturer_id
      t.integer :instrument_type_id
      t.date :purchase_date
      t.string :color
      t.string :serial
      t.string :owner
      t.string :prev_owner
      t.text :description
      t.string :finish

      t.timestamps
    end
  end

  def self.down
    drop_table :instruments
  end
end
