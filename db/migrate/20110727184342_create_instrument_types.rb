class CreateInstrumentTypes < ActiveRecord::Migration
  def self.up
    create_table :instrument_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :instrument_types
  end
end
