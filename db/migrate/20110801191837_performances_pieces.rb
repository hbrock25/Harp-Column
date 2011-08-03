class PerformancesPieces < ActiveRecord::Migration
  def self.up
    create_table :performances_pieces, :id => false do |t|
      t.integer :piece_id
      t.integer :performance_id
    end

    add_index :performances_pieces, [:piece_id, :performance_id], :unique => true
  end

  def self.down
    drop_table :performances_pieces
  end
end
