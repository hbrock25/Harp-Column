class InstrumentsPerformances < ActiveRecord::Migration
  def self.up
    create_table :instruments_performances, :id => false do |t|
      t.integer :instrument_id
      t.integer :performance_id
    end

    add_index :instruments_performances, [:instrument_id, :performance_id], :unique => true
  end

  def self.down
    drop_table :instruments_performances
  end
end
