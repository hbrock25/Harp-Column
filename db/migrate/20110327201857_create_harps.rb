class CreateHarps < ActiveRecord::Migration
  def self.up
    create_table :harps do |t|
      t.string :manufacturer
      t.string :model
      t.integer :number_or_strings
      t.string :size
      t.string :color
      t.date :build_date
      t.integer :serial_number
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :harps
  end
end
