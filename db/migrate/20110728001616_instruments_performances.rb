class PiecesPerformances < ActiveRecord::Migration
  def self.up
    create_table :pieces_performances, :id => false do |t|
      t.integer :piece_id
      t.integer :performance_id
    end

    add_index :pieces_performances, [:instrument_id, :performance_id], :unique => true, :name => :inst_perf
  end

  def self.down
    drop_table :pieces_performances
  end
end
