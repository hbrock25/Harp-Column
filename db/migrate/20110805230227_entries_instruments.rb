class EntriesInstruments < ActiveRecord::Migration
  def self.up
    create_table :entries_instruments, :id => false do |t|
      t.integer :instrument_id
      t.integer :entry_id
    end

    add_index :entries_instruments, [:instrument_id, :entry_id], :unique => true
  end

  def self.down
    drop_table :entries_instruments
  end
end
